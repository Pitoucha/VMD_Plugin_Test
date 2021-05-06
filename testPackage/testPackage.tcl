package provide testPackage 0.1

set TESTPACKAGE_PATH $env(TESTPACKAGE_PATH)
set PACKAGE_PATH "$TESTPACKAGE_PATH"
set PACKAGEPATH "$TESTPACKAGE_PATH"

variable platform $tcl_platform(platform)

switch $platform {
	unix {
    	set TMPDIR "/tmp" ;  # or even $::env(TMPDIR), at times.
  } macintosh {
    	set TMPDIR $::env(TRASH_FOLDER)  ;# a better place?
  } default {
    	set TMPDIR [pwd]
    	catch {set TMPDIR $::env(TMP)}
    	catch {set TMPDIR $::env(TEMP)}
  }
}

namespace eval ::testpackagepy:: {
	namespace export testpackagepy

	variable version 1.0

	variable w 


	
	puts "yay"
}

proc testpackage_tk {} {
  ::testpackagepy::testpackage
  #set ::druggability::which_mode [lindex $::druggability::titles [lsearch $::druggability::interfaces $::druggability::interface]]
  #::druggability::Switch_mode $::druggability::interface
  #return $::druggability::w
}