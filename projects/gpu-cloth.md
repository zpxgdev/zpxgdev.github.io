---
layout: default
title: "gpu 布料"
permalink: /projects/gpu-cloth/
---

[返回首页]({{ '/' | relative_url }})

## 简介

参考 MagicACloth 的 GPU Cloth 方案，支持骨骼布料与 Mesh 布料，采用 GPU Driven 架构，无自碰撞，可用于大量布料场景，GPU 时间小于 1ms。

![GPU 布料截图 1]({{ '/image/gpu_cloth1.PNG' | relative_url }})
![GPU 布料截图 2]({{ '/image/gpu_cloth2.PNG' | relative_url }})

<video controls preload="metadata" src="{{ '/video/cloth.mp4' | relative_url }}" style="width: 100%; max-width: 960px;"></video>

## UE 集成

展示 GPU 布料方案在 Unreal Engine 中的集成效果，包含骨骼布料、Mesh 布料编辑能力与性能验证。

![UE GPU 布料集成截图 1]({{ '/image/ue_gpu_cloth.PNG' | relative_url }})
![UE GPU 布料集成截图 2]({{ '/image/ue_gpu_cloth2.PNG' | relative_url }})
![UE GPU 布料集成截图 3]({{ '/image/ue_gpu_cloth3.PNG' | relative_url }})

<video controls preload="metadata" src="{{ '/video/clothgpu_bonecloth_edit.mp4' | relative_url }}" style="width: 100%; max-width: 960px;"></video>

<video controls preload="metadata" src="{{ '/video/clothgpu_meshcloth_edit.mp4' | relative_url }}" style="width: 100%; max-width: 960px;"></video>

<video controls preload="metadata" src="{{ '/video/clothgpu_perf_40_flags.mp4' | relative_url }}" style="width: 100%; max-width: 960px;"></video>
