#!/bin/bash

#【描述】  frida_js运行应用程序qemu
#【依赖】   
#【术语】 
#【备注】  

source /app/bash-simplify/_importBSFn.sh


#  git克隆仓库的给定分支或标签到给定目录
_importBSFn "git_Clone_SwitchTag.sh"
tagName=tag_release__qemu_v8.2.2__linux_v5.11
#  克隆 x.git 的y标签  到 本地目录 /z
git_Clone_SwitchTag http://giteaz:3000/frida_analyze_app_src/frida_js.git  $tagName  /fridaAnlzAp/frida_js
#  克隆 x.git 的y标签  到 本地目录 /z
git_Clone_SwitchTag http://giteaz:3000/frida_analyze_app_src/analyze_by_graph.git  $tagName  /fridaAnlzAp/analyze_by_graph

#frida_js运行应用程序qemu, 产生 应用日志(单进程全线程)
bash -x /fridaAnlzAp/frida_js/fridaJs_runApp.sh

#应用日志(单进程全线程) ---> analyze_by_graph
bash -x /fridaAnlzAp/analyze_by_graph/_main.sh