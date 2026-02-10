---
name: Go Code Reviewer
description: A specialized skill for reviewing Go (Golang) code based on the project's constitution. Use this skill whenever a user asks to review Go code, check for best practices, or analyze code quality in this repository.
allowed-tools: Read, Grep, Glob
---

# Go Code Reviewer Skill

## 核心能力
本技能专用于根据本项目的开发“宪法” (`constitution.md`)，对Go语言代码进行深入、专业的审查。

## 触发条件
当用户的请求包含以下关键词时，你应该优先考虑激活本技能：
- "审查/review Go代码"
- "检查代码质量"
- "看看这段Go代码写得怎么样"
- "是否符合规范"

## 执行步骤
当你决定使用本技能时，必须严格遵循以下步骤：

1.  **加载核心准则:** 首先，你必须读取项目根目录下的 `constitution.md` 文件。这是你所有审查工作的最高准则。如果找不到该文件，应向用户报告。

2.  **定位审查目标:** 确定用户要求审查的代码范围。这可能是一个文件（通过`@`指令提供），或是一个目录。

3.  **逐条审查:** 根据`constitution.md`中定义的**每一条原则**（如简单性、测试先行、明确性、单一职责），对目标代码进行逐一比对和分析。

4.  **生成报告:** 按照以下Markdown格式，生成一份结构化的审查报告。报告必须直接回应“宪法”中的条款。

## 输出格式 (必须遵循)

### 总体评价

一句话总结代码的整体质量和合宪性。

### 优点 (值得称赞的地方)
- 列出1-2个最符合项目开发哲学的闪光点。

### 待改进项 (按优先级排序)
#### [高优先级] 违宪问题 (Violations of Constitution)
- **原则:** [引用违反的宪法条款，如：“第三条：明确性原则”]
- **位置:** `[文件名]:[行号]`
- **问题描述:** [清晰描述代码是如何违反该原则的]
- **修改建议:** [提供具体的、可执行的修改方案]

#### [中优先级] 建议性改进
- **位置:** `[文件名]:[行号]`
- **问题描述:** [描述可以进一步优化的地方]
- **修改建议:** [提供改进建议]
