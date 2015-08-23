using terms from application "Messages"
	on message sent theMessage for theChat with theText
		set theChatId to (get id of theChat)

		if theMessage starts with "gif me" or theMessage starts with "giphy" then
			try
				set theQuotedMessage to quoted form of theMessage
				set theQuotedChatId to quoted form of theChatId
				do shell script "python /Users/dsilver/Documents/workspace/giphy-messages/giphy.py " & theQuotedMessage & " " & theQuotedChatId & " &>/dev/null &"
			on error err
			end try
		end if

		return theMessage
	end message sent

	on login finished for theService with theText

	end login finished

	on logout finished for theService with theText

	end logout finished

	on buddy became available theBuddy with theText

	end buddy became available

	on buddy became unavailable theBuddy with theText

	end buddy became unavailable

	on buddy authorization requested theAuthorizationRequest with theText

	end buddy authorization requested

	on chat room message received theMessageText from theBuddy for theTextChat with theText

	end chat room message received

	on addressed chat room message received theMessageText from theBuddy for theTextChat with theText

	end addressed chat room message received

	on active chat message received theMessageText from theBuddy for theTextChat with theText

	end active chat message received

	on message received theMessageText from theBuddy for theTextChat with theText

	end message received

	on addressed message received theMessageText from theBuddy for theTextChat with theText

	end addressed message received

	on received text invitation theMessageText from theBuddy for theTextChat with theText

	end received text invitation

	on received audio invitation from theBuddy for theAudioChat with theText

	end received audio invitation

	on received video invitation from theBuddy for theVideoChat with theText

	end received video invitation

	on received local screen sharing invitation from theBuddy for theAudioChat with theText

	end received local screen sharing invitation

	on received remote screen sharing invitation from theBuddy for theAudioChat with theText

	end received remote screen sharing invitation

	on av chat started theAudioChat with theText

	end av chat started

	on av chat ended theAudioChat with theText

	end av chat ended

	on received file transfer invitation theFileTransfer with theText

	end received file transfer invitation

	on completed file transfer theFileTransfer with theText

	end completed file transfer
end using terms from