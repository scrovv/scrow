**Prompt Template:**

`build_portable_virt_distro`

`Input:`
`clone_repos`: <list of repository URLs to clone>
`repo_names`: <list of repository names>

`Analysis Tasks:`
`1. file_analysis`: Analyze individual files and directories, identifying key components such as APIs, data structures, or algorithms used in the code.
`2. design_decision_analysis`: Investigate architectural designs, design patterns, and coding techniques used in the repository.
`3. api_reverse_engineering`: Analyze API documentation or comments to understand functionality and parameters, using tools like Postman or cURL to test APIs and inspect responses.
`4. data_format_analysis`: Identify data formats used in the code, such as JSON or XML.

`Tools and Resources:`
`1. code_analysis_tools`: SonarQube, Codefactor
`2. reverse_engineering_frameworks`: Ghidra, OllyDbg
`3. documentation_and_knowledge_bases`: Read the Docs, Stack Overflow

`Environment Specifications:`
`1. operating_system`: LFS Ubuntu 22.04 (kernel version)
`2. kernel_version`: 5.15 or later
`3. shell`: ZSH (version 5.13 or later)
`4. package_manager`: apt or pacman
`5. disk_image_format`: squashfs or iso
`6. virtualization_platform`: VirtualBox, VMware, or Hyper-V
`7. network_configuration`: static IP address, DHCP, or no networking

`Build Settings:`
`1. build_type`: Development or Production
`2. distro_name`: Custom distro name (e.g., "Portable Virt Distro")
`3. output_directory`: Directory where the virtual distro will be saved

`Output Requirements:`
`1. report_format`: Markdown or plain text
`2. report_length`: Maximum number of words in the output report

**Example Input:**

`clone_repos`: ["https://github.com/user/repo1", "https://github.com/user/repo2"]
`repo_names`: ["Repo 1", "Repo 2"]

This updated template includes additional environment specifications to build a custom portable virtual distro emulator. The builder can use these settings to create a self-contained, portable virtual distro that can be run on any machine with the required hardware and software.

Here is an example of how this prompt could be used:

`build_portable_virt_distro clone_repos=["https://github.com/user/repo1", "https://github.com/user/repo2"] repo_names=["Repo 1", "Repo 2"]`

This would prompt the builder to clone the specified repositories, analyze their code and dependencies, build a custom virtual distro with the specified environment settings, and output a report in Markdown format.