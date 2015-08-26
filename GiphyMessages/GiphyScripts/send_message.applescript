on run argv

	set theType to item 1 of argv
	set theChatId to item 2 of argv
	set theMessage to item 3 of argv

	tell application "Messages"
		set theService to first service whose service type = iMessage
		set theChat to first chat whose id is theChatId

		if theType is "message"
			send theMessage to theChat
		else if theType is "attachment"
			set theAttachment to POSIX file theMessage as alias
			send theAttachment to theChat
		end if
	end tell

end run