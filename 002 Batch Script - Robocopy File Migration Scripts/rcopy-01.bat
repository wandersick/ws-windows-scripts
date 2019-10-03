REM Be careful of /MIR. As a safe practice and habit, use /E instead where possible except final delta sync before switchover to prevent human mistakes which could cause data loss
robocopy \\file-server\d$\home\staff D:\home\staff *.* /MIR /COPYALL /R:0 /W:0 /TEE /LOG+:robocopy_output.log /ZB /MT:32

pause
