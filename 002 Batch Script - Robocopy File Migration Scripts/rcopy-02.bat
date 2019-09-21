:: Copy EFS-encrypted files in EFS RAW mode

robocopy D:\home\staff\efs \\file-server\d$\home\staff\efs /E /COPYALL /EFSRAW /R:0 /W:0 /TEE /LOG+:c:\temp\efs_robocopy_output.log /ZB

:: Alternative

robocopy \\file-server\d$\home\staff\efs D:\home\staff\efs /E /COPYALL /EFSRAW /R:0 /W:0 /TEE /LOG+:c:\temp\efs_robocopy_output.log /ZB

pause