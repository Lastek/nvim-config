-- Remember to update $XDG_CONFIG_HOME path variable. In this case I set it to %USERPROFILE%!
-- Do the same for $XDG_DATA_HOME
print("hello")
if vim.g.vcode then 	
	require ("lastek")
else
	require("lastek")
	require("packer")
end
