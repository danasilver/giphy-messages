--
-- send_message.applescript
-- Sends a message or attachment via Messages.app
--
-- Usage: osascript send_message.applescript type chatId message
--     type is "message" or "attachment"
--     message is a text message to send or the path to an attachment
--
-- Copyright (c) 2015 Dana Silver. All rights reserved.
--

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