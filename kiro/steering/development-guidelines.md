# Development Guidelines

## Security Guidelines

- Never share or commit security keys, credentials, or sensitive information
- Do not include AWS account IDs, access keys, secret keys, or session tokens in code
- Avoid sharing API keys, database passwords, or authentication tokens
- Use environment variables or secure credential management systems for sensitive data
- Replace any exposed credentials immediately if accidentally shared
- Use placeholder values like `[AWS_ACCOUNT_ID]`, `[API_KEY]`, or `[SECRET]` in examples
- Review code for hardcoded credentials before committing
- Follow the principle of least privilege for access permissions

## Comment Guidelines

- Keep comments minimal and only when necessary
- Avoid adding progress comments while coding
- Don't add excessive documentation unless explicitly requested
- Prioritize clean, self-documenting code over verbose comments
- Only add detailed comments when the user specifically asks for them

## General Approach

- Focus on concise, readable code
- Let the code speak for itself when possible
- Add comments only for complex logic or when clarification is needed
- Always replace old implementations completely - don't keep previous code for compatibility
- Remove deprecated or unused code rather than commenting it out

## Clarity and Communication

- Ask clarifying questions when requirements or intent are unclear
- Don't make assumptions about what the user wants - seek clarification instead
- Better to ask a quick question than to implement the wrong solution
- If multiple interpretations are possible, present options and ask for direction
- Confirm understanding of complex or ambiguous requests before proceeding

## Implementation Strategy

- Always modify existing implementations directly unless specifically asked to create new ones
- Don't create "fixed", "enhanced", or "improved" versions alongside existing code
- Replace the current implementation in place rather than adding alternatives
- Only create separate implementations when explicitly requested by the user
- When making changes, update the existing code structure rather than duplicating it

## Language Guidelines

- Avoid using the word "comprehensive" in responses and documentation
- Use alternatives like "detailed", "thorough", "complete", or "full" instead

## MCP Server Usage

- Prioritize using MCP servers to get more information and background

## CLI and Tool Usage

- Don't add unnecessary CLI tools or commands unless explicitly requested by the user
- Focus on the core functionality needed to solve the problem
- Only suggest additional tools when they directly address the user's stated requirements
- Avoid over-engineering solutions with extra tooling

## Documentation Guidelines

- Do not create additional markdown files to document your work unless explicitly requested
- Avoid creating summary documents, progress reports, or implementation notes
- Keep documentation within the code itself when necessary

## Memory MCP Usage

- Store only fundamental, long-term relevant knowledge that remains valuable over months
- Focus on storing:
  - User preferences and working style
  - Core technical knowledge and architectural patterns
  - Fundamental project information (purpose, tech stack, key components)
  - Important relationships between systems or concepts
- Avoid storing temporary information like:
  - Specific tickets or issues
  - Current task details
  - Time-sensitive information
  - Implementation details that change frequently
- Use memory to maintain continuity across conversations without cluttering with ephemeral data
- Search the knowledge graph when you need to recall established context or user background