####Maud Westendorp####
####21 December 2018####
####Script written to help automatically segment sound files.####
####Takes sound file and annotates all non-silent intervals to TextGrid with optimal settings for experimental setup of NWD.####

form Enter directory and search string.
	comment Directory of sound files. Be sure to include the final "/"!
	text Directory /Users/
	comment Directory of TextGrid files. Be sure to include the final "/"!
	text textGrid_directory /Users/
	comment Leaving the "Word" field blank will open all sound files in a directory. 
	comment Open only files beginning with a particular search string by specifying Word.
	sentence Word 
	sentence Filetype WAV
endform
clearinfo

#Make a list of all sound files in the directory.
Create Strings as file list... file-list 'directory$''word$'*.'filetype$'
number_of_files = Get number of strings

#Loop for all files.
for x from 1 to number_of_files
	select Strings file-list
	current_file$ = Get string... x

	Read from file... 'directory$''current_file$'
	object_name$ = selected$ ("Sound")

#Check if TextGrid exists for the file, if not, create it.
	textgrid_filename$ = textGrid_directory$ + object_name$ + ".TextGrid"
		if not fileReadable (textgrid_filename$)
			To TextGrid (silences): 70, 0, -35, 0.7, 0.3, "", "***"
     			Save as text file... 'textGrid_directory$''object_name$'.TextGrid
		endif

    	select all
	minus Strings file-list
	Remove
endfor

select Strings file-list
Remove

printline TextGrids have been created for 'word$'.'filetype$' files in 
printline 'directory$'