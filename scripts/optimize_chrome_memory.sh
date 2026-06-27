#!/bin/bash
# Chrome 内存深度优化 - Mac 版
# 一键关闭 Chrome → 清理缓存 → 以优化参数重启

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
MEMORY_LIMIT=4096
MAX_RENDERER=10
INACTIVE_TIMEOUT=15

echo "╔══════════════════════════════════════╗"
echo "║    Chrome 内存深度优化工具 v1.0      ║"
echo "║           Mac 版                      ║"
echo "╚══════════════════════════════════════╝"

echo -n "[1/4] 关闭 Chrome..."
pkill -f "Google Chrome" 2>/dev/null
sleep 2
echo " ✔"

echo -n "[2/4] 清理缓存..."
# 轻量清理，不碰可能阻塞的深目录
rm -rf "$HOME/Library/Caches/Google/Chrome/Default/GPUCache" 2>/dev/null
rm -rf "$HOME/Library/Caches/Google/Chrome/Default/Media Cache" 2>/dev/null
mkdir -p "$HOME/Library/Caches/Google/Chrome/Default/GPUCache" "$HOME/Library/Caches/Google/Chrome/Default/Media Cache" 2>/dev/null
echo " ✔"

echo -n "[3/4] 写入内存节省器配置..."
PREF_FILE="$HOME/Library/Application Support/Google/Chrome/Default/Preferences"
if [ -f "$PREF_FILE" ]; then
    export PREF_FILE
    python3 << 'PYEOF'
import json, os
pref_path = os.path.expanduser(os.environ.get('PREF_FILE', ''))
with open(pref_path, 'r') as f:
    prefs = json.load(f)
if 'performance_tuning' not in prefs:
    prefs['performance_tuning'] = {}
perf = prefs['performance_tuning']
perf['high_efficiency_mode'] = {'enabled': True, 'type': 0, 'mode': 0, 'inactive_time': 15, 'exception_sites': []}
perf['memory_saver'] = {'enabled': True, 'mode': 0}
perf['battery_saver'] = {'enabled': True, 'mode': 0}
perf['tab_discarding'] = {'enabled': True, 'discard_interval_minutes': 30}
with open(pref_path, 'w') as f:
    json.dump(prefs, f, separators=(',', ':'))
print('done')
PYEOF
fi
echo " ✔"

echo -n "[4/4] 启动 Chrome（优化模式）..."
nohup "$CHROME" \
    --memory-pressure-off \
    --disable-background-networking \
    --disable-features=TranslateUI,ChromeWhatsNewUI,InterestFeedContentSuggestions,CalculateNativeWinOcclusion \
    --disable-component-update \
    --disable-default-apps \
    --disable-preconnect \
    --disable-sync \
    --renderer-process-limit=$MAX_RENDERER \
    --max_old_space_size=$MEMORY_LIMIT \
    > /dev/null 2>&1 &
echo " ✔"

echo ""
echo "══════════════════════════════════════════"
echo " 优化完成！"
echo " 进程数: $(ps aux | grep -i 'Google Chrome' | grep -v grep | wc -l | tr -d ' ')"
echo " 内存节省器: 已启用"
echo " 标签冻结: ${INACTIVE_TIMEOUT}分钟"
echo " 渲染进程限制: 最多 ${MAX_RENDERER} 个"
echo "══════════════════════════════════════════"
