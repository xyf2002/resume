# 申请邮件（iSING Lab / 陈凯教授）

**收件人：** join-ising-request@lists.ust.hk
**抄送（可选）：** kaichen@cse.ust.hk
**主题：** `Apply-PhD-Yufeng Xia-UoE`

---

尊敬的陈凯教授及 iSING Lab 老师：

您好！我是 Yufeng Xia（夏宇丰），目前在**英国爱丁堡大学信息学院（School of Informatics）计算机系统架构研究所（ICSA）**攻读 **MSc by Research**，导师为 Mahesh K. Marina 教授；本科同为爱丁堡大学计算机科学专业，以 **First Class Honours（一等荣誉学位，加权均分 74/100，英国一等线为 70）** 毕业。爱丁堡不发放 GPA 与年级排名，学位等级（First Class 为四档中的最高档）是官方的学业标准，特此说明。

我希望申请 iSING Lab 的 **PhD 项目（Fall 2027 入学）**，并计划在 2026 年 12 月截止前提交 **Hong Kong PhD Fellowship Scheme（HKPFS）** 申请。

**关于时间：** 我的硕士论文将于 **2026 年 9 月**提交。**从 2026 年 9 月起我即可远程参与实验室的科研项目**；**2026 年 10 月起可全职投入**，无论远程或到香港现场均可。如果实验室认为合适，我很愿意先以 **Research Assistant** 身份加入并参与实际项目，再在 Fall 2027 正式入学。

**关于研究方向：** 我的工作集中在**机器学习系统**与**网络系统**的交叉处，与实验室的 **AI 中心网络**和**机器学习系统**两个方向直接相关，具体有两条线：

1. **共享基础设施上的算力分配。** 在 Weaver（在投）中，我负责 GPU profiling 与干扰刻画：通过 roofline 分析证明时延敏感负载的核函数是访存带宽受限、而训练是计算受限，这一非对称性正是 SM 级共置成为可能的前提；系统在多站点测试床上可回收多达 **83%** 的空闲算力而不损害高优先级负载。我的硕士论文 Flux-DT 进一步处理"被回收算力的负载本身是有状态的"这一情形——用重定位、降精度、挂起/恢复的分级响应替代直接驱逐，并用贪心启发式在互相干扰的单元间做放置与卸载排序。

2. **高性能数据平面。** 在 Morphling（EdgeSys'26，**最佳论文奖**）中，我负责设备间传输数据平面：基于 libevent 的事件驱动收发、零拷贝 scatter-gather、`cudaHostAlloc` 分桶固定内存池、序列化开销实测（Protobuf vs FlatBuffers）与批量成帧策略，以及分布式虚拟时钟同步和大规模下才会出现的连接清理/设备故障死锁修复。约 2,400 行 C++，在 18k 行 C++/CUDA 代码库中经 PR 评审合入。

此外，我在 EmuRAN（**ACM MobiCom 2026，conditionally accepted**）中负责端到端评估，在公有云 **130 台实例、6,400 核**上部署并验证了 10,000 终端与 10,000 基站规模的仿真；在 CoSenseAQ（在投，**一作**）中独立完成了基于 LLVM 的自动量化框架，从选题、实现、评估到论文写作全流程由我负责。

我需要坦率说明一点：我目前**没有 RDMA、SmartNIC 或可编程交换机的实践经验**，我的数据平面工作停留在主机软件层。把这一层继续向下推进到网络本身，正是我希望加入 iSING Lab 的原因——实验室在数据中心网络与高性能网络上的积累，恰好是我现有能力最缺、也最想补的部分。

**附件：**

1. `Yufeng-Xia-CV.pdf` — 简历（含教育背景、加权均分、发表论文与项目经历）
2. `Yufeng-Xia-Toolchain.pdf` — 所掌握工具链总结（按语言 / GPU / 数据平面 / 分布式与云 / 编译器 / 工程实践分组，每项注明具体做过什么）
3. `Yufeng-Xia-Repository.pdf` — 代码能力仓库介绍
   - 主仓库：https://github.com/netsys-edinburgh/morphling （EdgeSys'26 最佳论文 artifact，我负责传输数据平面，91 commits）
   - 个人独立项目：https://github.com/xyf2002/tensor-compiler （独立完成的多目标 MLIR 张量编译器）
4. `CoSenseAQ-manuscript.pdf` — 在投论文正文（我为第一作者）

感谢您拨冗阅读。若有任何需要补充的材料（成绩单、推荐人联系方式、其他论文手稿），我可以随时提供。期待有机会与您进一步交流。

顺祝
研安

Yufeng Xia（夏宇丰）
MSc by Research, School of Informatics, University of Edinburgh
Email: yufeng.xia@ed.ac.uk ｜ Tel: (+44) 7918155093
主页: https://xyf2002.github.io/ ｜ LinkedIn: linkedin.com/in/yufeng-xia-12648a25b

---

## 发送前检查清单

- [ ] 主题严格为 `Apply-PhD-Yufeng Xia-UoE`（招生贴示例格式为 `Apply-PhD-李明-PKU`；若想更贴近示例可用 `Apply-PhD-Yufeng Xia-Edinburgh`）
- [ ] 中文名"夏宇丰"确认无误（如与实际不符请修改）
- [ ] 四份附件都已添加，文件名规范
- [ ] CoSenseAQ 手稿是否含未公开内容 / 是否需与 Barbalace 老师确认后再外发
- [ ] Wasp 论文中的个人角色已确认（CV 中该处目前为占位符）
- [ ] 加权均分 74 与成绩单一致
