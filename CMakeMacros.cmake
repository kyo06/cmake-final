MACRO (SUBDIRLIST result curdir)
 FILE(GLOB children RELATIVE ${curdir} ${curdir}/*)
	set(dirlist "")
	foreach(child ${children})
		if(IS_DIRECTORY ${curdir}/${child})
		LIST(APPEND dirlist ${child})		
		endif()
	endforeach()
	set (${result} ${dirlist})
ENDMACRO()
