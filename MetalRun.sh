#!/bin/bash
clear
# 定义颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # 无颜色
VERSION=1.25.2_MacOS_UNIVERSAL

# 欢迎信息
echo -e "${RED}** Metal HUD运行程序助手 Run Applications with Metal HUD Helper${NC} **"
echo -e "${YELLOW}-- 版权所有 CopyRight@BruceHanzi --${NC}"
echo -e "${GREEN}== 应用版本 AppVersion: ${VERSION} --${NC}"
echo -e "${BLUE}请输入应用程序名称 Enter your application name:${NC}"
read APP_NAME
 
# 定位应用路径
APP_PATH="/Applications/$APP_NAME.app"

# 检查应用是否存在
if [ ! -d "$APP_PATH" ]; then
  echo -e "${RED}错误：找不到应用程序 \"$APP_NAME\" (Error: Application \"$APP_NAME\" not found in /Applications).${NC}"
  exit 1
fi

# 定位 Contents/MacOS 中的可执行文件路径
EXECUTABLE_PATH="$APP_PATH/Contents/MacOS"
if [ ! -d "$EXECUTABLE_PATH" ]; then
  echo -e "${RED}错误：无法找到可执行目录 \"$EXECUTABLE_PATH\" (Error: No executable directory found in \"$APP_PATH\").${NC}"
  exit 1
fi

# 查找第一个可执行文件并排除 .sh 文件
EXECUTABLE=$(find "$EXECUTABLE_PATH" -type f -perm +111 ! -name "*.sh" | head -n 1)
# 检查是否找到可执行文件
if [ -z "$EXECUTABLE" ]; then
  echo -e "${YELLOW}警告：未找到有效的可执行文件 (Warning: No valid executable file found in \"$EXECUTABLE_PATH\").${NC}"
  exit 1
fi

# 启用 Metal HUD 并运行程序
export MTL_HUD_ENABLED=1
echo -e "${GREEN}启动程序 \"$APP_NAME\" (Starting \"$APP_NAME\" with Metal HUD)...${NC}"
echo -e "${Blue}准备启动带有Metal HUD的程序 Ready to run application with Metal HUD${NC}"
echo -e "${RED}控制台可能会输出一系列代码，无需担心 Shell may output some codes, don be worry${NC}"
"$EXECUTABLE"
