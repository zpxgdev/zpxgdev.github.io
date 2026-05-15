# 早期作品

## 宝石渲染

光追 + 色散渲染，支持android、ios等移动机型

![alt text](old/gem1.PNG)
![alt text](old/gem2.PNG)

## lightmap 烘焙

分布式lightmap烘焙，算法仿lightmass，分布式使用 zeromq 做消息层

![alt text](old/lm2.png)
![alt text](old/lm3.png)

## navmesh editor

适配大厂老旧端游引擎的recast navmesh 寻路底层 + 编辑器

![alt text](old/naveditor.png)

## 节点材质编辑器

大厂轮子

![alt text](old/splendor1.png)
![alt text](old/splendor2.png)

# unity、unreal 烘焙光照同步

尝试在Unity项目还原UE烘焙光照

![alt text](image/lightmap_unity.PNG)
![alt text](image/lightmap_unreal.PNG)
![alt text](image/vlm_unity_unreal.PNG)
![alt text](image/vlm_unity_unreal2.PNG)

# rust语言实现自用渲染器

## 三线程渲染

经典三线程渲染，使用ue tracelog做insights集成

![alt text](image/mt_render_insights.PNG)

<video controls src="video/mt_render_insights.mp4" title="Title"></video>

## gpu 布料

参考 magicacloth 的 GPU Cloth，支持骨骼和mesh布料，GPU Driven，无自碰撞，可用于大量布料场景，GPU时间小于1ms

![alt text](image/gpu_cloth1.PNG)
![alt text](image/gpu_cloth2.PNG)

<video controls src="video/cloth.mp4" title="Title"></video>

### UE 集成

![alt text](image/ue_gpu_cloth.PNG)
![alt text](image/ue_gpu_cloth2.PNG)
![alt text](image/ue_gpu_cloth3.PNG)


[text](video/clothgpu_bonecloth_edit.webm)
[text](video/clothgpu_meshcloth_edit.webm)
[text](video/clothgpu_perf_40_flags.webm)

## vfx

Returnal的过程化GPU特效系统，支持sprite、mesh粒子，node particle，sdf采样，风场采样

![alt text](image/vfx.PNG)

<video controls src="video/vfx.mp4" title="Title"></video>

## grass

对马岛的过程化草，GPU driven，支持风场采样和可视化

![alt text](image/grass1.PNG)
![alt text](image/grass2.PNG)
![alt text](image/grass3.PNG)

<video controls src="video/grass.mp4" title="Title"></video>


## TOD

Time of Day 天气系统，支持太阳经纬度、方向和时间流逝控制，并可实时预览天空与云层变化

![alt text](image/tod1.PNG)
![alt text](image/tod2.PNG)
![alt text](image/tod3.PNG)
![alt text](image/tod4.PNG)
![alt text](image/tod5.PNG)

<video controls src="video/tod.mp4" title="Title"></video>


## 虚拟几何系统

虚拟几何系统，预处理：Cluster + 减面 + DAG + 流送 Page，运行时：多级裁剪 + 流送 Fixup + 光栅化分桶 + 硬件MeshShader/CS 软光栅 + 异步feedback

![alt text](image/vgeo1.PNG)
![alt text](image/vgeo2.PNG)
![alt text](image/vgeo3.PNG)

<video controls src="video/vgeo.mp4" title="Title"></video>


## distance field

验证渲染器的 GPU driven的distance field生成，支持mesh df 和 global df，使用 page allocator + clipmap 优化

![alt text](image/df1.PNG)
![alt text](image/df2.PNG)

<video controls src="video/distance_field.mp4" title="Title"></video>

## 场景数据

一套场景数据定义（Rust侧），可生成多语言自动绑定：C/C++，C#，Python
能够处理依赖资源作并行加载和保存


![alt text](image/scene_ffi.PNG)
![alt text](image/scene_ffi2.PNG)
![alt text](image/scene_ffi3.PNG)
![alt text](image/scene_ffi4.PNG)


## pathtracing

验证渲染器的Pathtracing效果，场景从pbrt-v4转换

![alt text](image/pt_film_pbrt_kroken.png)
![alt text](image/pt_film_pbrt_aovs_kroken.png)
![alt text](image/pt_film_pbrt_bistro_cafe.png)
![alt text](image/pt_film_pbrt_aovs_bistro_cafe.png)


## 动画

实现动画播放、混合空间以及UE动画蓝图分析

![alt text](image/anim1.PNG)
![alt text](image/anim2.PNG)
![alt text](image/anim3.PNG)
![alt text](image/anim4.PNG)

<video controls src="video/anim.mp4" title="Title"></video>

## 材质生成

AI 生成材质，自动 hlsl jit 生成动态材质，反射参数列表和编辑控件
导出参数和变体通过HLSL直接定义，参数使用Int4进行pack并由JIT生成hlsl动态参数解码

![alt text](image/material_editor.PNG)
![alt text](image/material_editor2.PNG)
![alt text](image/material_editor3.PNG)
![alt text](image/material_editor4.PNG)


<video controls src="video/material_editor.mp4" title="Title"></video>

## 分布式任务

使用rust实现的分布式任务，可部署在局域网进行任意应用的分布式计算，提供 broker worker 可视化

![alt text](image/dist_task.PNG)
<video controls src="video/dist_task.mp4" title="Title"></video>

## 分布式 lightmap bake

验证渲染器的Pathtracing生成lightmap数据

![alt text](image/dist_bake.PNG)
![alt text](image/dist_bake2.PNG)
![alt text](image/dist_bake3.PNG)

<video controls src="video/dist_bake.mp4" title="Title"></video>

## ddgi

验证渲染器的Pathtracing生成probe数据

![alt text](image/ddgi.PNG)

<video controls src="video/ddgi.mp4" title="Title"></video>

# Bevy script VM

给 bevy 量身打造的script vm，语法接近于bevy ecs，基于寄存器VM，可注册native函数以及脚本定义。验证纯脚本实现demo：俄罗斯方块


![alt text](image/bscript1.PNG)
![alt text](image/bscript2.PNG)
![alt text](image/bscript3.PNG)

<video controls src="video/bscript.mp4" title="Title"></video>

# 定制 renderdoc 分析器

使用官方 renderdoc C++ SDK，编写自定义分析器，支持命令行和GUI，超高性能，支持VS/PS/CS 各种资源视图，快速查看和比对

![alt text](image/rdoc1.png)
![alt text](image/rdoc2.png)
![alt text](image/rdoc3.png)
![alt text](image/rdoc4.png)
![alt text](image/rdoc5.png)
![alt text](image/rdoc6.png)
![alt text](image/rdoc7.png)
![alt text](image/rdoc8.png)

<video controls src="video/rdcr.mp4" title="Title"></video>
<video controls src="video/rdcr2.mp4" title="Title"></video>


# angelscript ue 实践

## 使用 angelscript ue 实现的脚本化渲染管线

封装底层ShaderMap和动态buffer数据，通过蓝图接口暴露给 angelscript，脚本可编写渲染管线，可热更管线和shader

![alt text](image/as_ue_render1.PNG)
![alt text](image/as_ue_render2.PNG)

<video controls src="video/scriptrender.mp4" title="Title"></video>

## 使用 angelscript ue 实现的脚本化slate应用

封装 slate 到蓝图接口，使用 angelscript 编写编辑器slate，可热更

![alt text](image/as_slate.PNG)

<video controls src="video/scriptslate.mp4" title="Title"></video>


# houdini

## houdini mcp + python生成 + houdini节点生成

根据 houdini 文档自动生成 MCP，AI 使用python api创建节点，通过远程 rpc 控制houdini生成节点图并预览

![alt text](image/script_houdini1.PNG)
![alt text](image/script_houdini2.PNG)

<video controls src="video/script_houdini.mp4" title="Title"></video>


# 自动化测试

## yolo自动测试框架、编辑器

录屏、标注工具、训练、验证、基于目标检测的自动测试框架

![alt text](image/autotest1.PNG)
![alt text](image/autotest2.PNG)
![alt text](image/autotest3.PNG)
![alt text](image/autotest4.PNG)

<video controls src="video/autotest.mp4" title="Title"></video>


# tts 故事机

yarn 格式、AI 故事生成、声音克隆、自动剪辑

![alt text](image/storygen1.PNG)
![alt text](image/storygen2.PNG)

<video controls src="video/tts_story.mp4" title="Title"></video>
