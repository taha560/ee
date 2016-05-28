function help(msg, matches)

    if is_realm(msg) and is_sudo(msg) then
    	HelpRealm = io.open("./helps/HelpRealm.txt, ok_cb, false)
    	help_text_realm = HelpRealm:read("*all")
	  return help_text_realm
	end
	
	if is_group(msg) and is_momod(msg) or is_owner(msg) then
	HelpChat = io.open("./helps/HelpChat.txt, ok_cb, false)
    	help_text = HelpChat:read("*all")
	  return help_text
	elseif is_group(msg) and not is_momod(msg) or not is_owner(msg) then
	  return "You can see /help text"
	end
	
	if is_super_group(msg) and is_momod(msg) or is_owner(msg) then
	HelpSuper = io.open("./helps/HelpSuper.txt, ok_cb, false)
    	help_text_super = HelpSuper:read("*all")
	  return help_text_super
	elseif is_super_group(msg) and not is_momod(msg) or not is_owner(msg) then
	  return "You can see /help text"
	end
	
	if is_support(msg) then
	  return "This is support"
	end
end
return {
advan = "http://github.com/janlou",
patterns = {"^[!#/](help)$"},
help = run,
}
