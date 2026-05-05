---
layout: default
title: "使用 angelscript ue 实现的脚本化渲染管线"
permalink: /projects/angelscript-render-pipeline/
---

[返回首页]({{ '/' | relative_url }})

## 简介

封装底层 ShaderMap 与动态 Buffer 数据，并通过蓝图接口暴露给 AngelScript，使脚本可以编写渲染管线并热更管线与 Shader。

![AngelScript 渲染管线截图 1]({{ '/image/as_ue_render1.PNG' | relative_url }})
![AngelScript 渲染管线截图 2]({{ '/image/as_ue_render2.PNG' | relative_url }})

<video controls preload="metadata" src="{{ '/video/scriptrender.mp4' | relative_url }}" style="width: 100%; max-width: 960px;"></video>
