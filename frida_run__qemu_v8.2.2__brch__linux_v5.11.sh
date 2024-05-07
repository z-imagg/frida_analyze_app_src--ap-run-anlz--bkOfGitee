#!/bin/bash

#【描述】  frida_js运行应用程序qemu
#【依赖】   
#【术语】 
#【备注】  

source /app/bash-simplify/_importBSFn.sh


#  git克隆仓库的给定分支或标签到给定目录
_importBSFn "git_Clone_SwitchTag.sh"
#  克隆 x.git 的y标签  到 本地目录 /z
git_Clone_SwitchTag http://giteaz:3000/frida_analyze_app_src/frida_js.git  tag_release__frida_js_run__qemu_v8.2.2__linux_v5.11  /fridaAnlzAp/frida_js
#  克隆 x.git 的y标签  到 本地目录 /z
git_Clone_SwitchTag http://giteaz:3000/frida_analyze_app_src/analyze_by_graph.git  tag_release__neo4j_log_transform__qemu_v8.2.2__linux_v5.11  /fridaAnlzAp/analyze_by_graph

#frida_js运行应用程序qemu
bash -x /fridaAnlzAp/frida_js/fridaJs_runApp.sh