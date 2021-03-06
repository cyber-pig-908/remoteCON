#############################################################################
# Generated by PAGE version 5.4
#  in conjunction with Tcl version 8.6
#  Jul 22, 2020 09:28:53 PM CDT  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) 
    wm focusmodel $top passive
    wm geometry $top 600x450+316+173
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1370 749
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 0 0
    wm deiconify $top
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    label $top.lab45 \
        -background Black -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI Semilight} -size 14 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground White -text remoteCON_host 
    vTcl:DefineAlias "$top.lab45" "main_title" vTcl:WidgetProc "Toplevel1" 1
    frame $top.fra48 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 105 -width 565 
    vTcl:DefineAlias "$top.fra48" "connection_settings_frame" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra48
    label $site_3_0.lab49 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI Light} -size 11 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text {Host: } 
    vTcl:DefineAlias "$site_3_0.lab49" "host_label" vTcl:WidgetProc "Toplevel1" 1
    text $site_3_0.tex51 \
        -background white -font TkTextFont -foreground black -height 24 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 264 -wrap word 
    $site_3_0.tex51 configure -font "TkTextFont"
    $site_3_0.tex51 insert end text
    vTcl:DefineAlias "$site_3_0.tex51" "host_input" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab52 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI Light} -size 11 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text {Port: } 
    vTcl:DefineAlias "$site_3_0.lab52" "port_label" vTcl:WidgetProc "Toplevel1" 1
    text $site_3_0.tex55 \
        -background white -font TkTextFont -foreground black -height 24 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 264 -wrap word 
    $site_3_0.tex55 configure -font "TkTextFont"
    $site_3_0.tex55 insert end text
    vTcl:DefineAlias "$site_3_0.tex55" "port_input" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab49 \
        -in $site_3_0 -x 0 -relx 0.018 -y 0 -rely 0.095 -width 0 \
        -relwidth 0.219 -height 0 -relheight 0.295 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tex51 \
        -in $site_3_0 -x 0 -relx 0.177 -y 0 -rely 0.095 -width 0 \
        -relwidth 0.467 -height 0 -relheight 0.229 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab52 \
        -in $site_3_0 -x 0 -relx 0.018 -y 0 -rely 0.476 -width 0 \
        -relwidth 0.211 -height 0 -relheight 0.295 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tex55 \
        -in $site_3_0 -x 0 -relx 0.177 -y 0 -rely 0.476 -width 0 \
        -relwidth 0.467 -height 0 -relheight 0.229 -anchor nw \
        -bordermode ignore 
    frame $top.fra56 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 235 -width 245 
    vTcl:DefineAlias "$top.fra56" "launch_center" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra56
    label $site_3_0.lab57 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI Light} -size 11 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text {Send To Target:} 
    vTcl:DefineAlias "$site_3_0.lab57" "sending_label" vTcl:WidgetProc "Toplevel1" 1
    text $site_3_0.tex58 \
        -background white -font TkTextFont -foreground black -height 24 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 224 -wrap word 
    $site_3_0.tex58 configure -font "TkTextFont"
    $site_3_0.tex58 insert end text
    vTcl:DefineAlias "$site_3_0.tex58" "sending_input" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but59 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command sending_host \
        -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI Light} -size 13 -weight bold -slant italic -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Send 
    vTcl:DefineAlias "$site_3_0.but59" "send_button" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab57 \
        -in $site_3_0 -x 0 -relx 0.041 -y 0 -rely 0.043 -width 0 \
        -relwidth 0.914 -height 0 -relheight 0.132 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tex58 \
        -in $site_3_0 -x 0 -relx 0.041 -y 0 -rely 0.17 -width 0 \
        -relwidth 0.914 -height 0 -relheight 0.102 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but59 \
        -in $site_3_0 -x 0 -relx 0.327 -y 0 -rely 0.723 -width 77 -relwidth 0 \
        -height 44 -relheight 0 -anchor nw -bordermode ignore 
    frame $top.fra60 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 235 -width 245 
    vTcl:DefineAlias "$top.fra60" "from_center" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra60
    label $site_3_0.lab61 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI Light} -size 11 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text {From Target:} 
    vTcl:DefineAlias "$site_3_0.lab61" "from_label" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab62 \
        -background White -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) 
    vTcl:DefineAlias "$site_3_0.lab62" "from_output" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab63 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI Light} -size 10 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text {By: Rem FInita} 
    vTcl:DefineAlias "$site_3_0.lab63" "credit_label" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab61 \
        -in $site_3_0 -x 0 -relx 0.041 -y 0 -rely 0.043 -width 0 \
        -relwidth 0.914 -height 0 -relheight 0.132 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab62 \
        -in $site_3_0 -x 0 -relx 0.041 -y 0 -rely 0.17 -width 0 \
        -relwidth 0.914 -height 0 -relheight 0.089 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab63 \
        -in $site_3_0 -x 0 -relx 0.408 -y 0 -rely 0.851 -width 0 \
        -relwidth 0.547 -height 0 -relheight 0.089 -anchor nw \
        -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab45 \
        -in $top -x 0 -relx -0.01 -y 0 -rely -0.009 -width 0 -relwidth 1.012 \
        -height 0 -relheight 0.111 -anchor nw -bordermode ignore 
    place $top.fra48 \
        -in $top -x 0 -relx 0.017 -y 0 -rely 0.133 -width 0 -relwidth 0.942 \
        -height 0 -relheight 0.233 -anchor nw -bordermode ignore 
    place $top.fra56 \
        -in $top -x 0 -relx 0.017 -y 0 -rely 0.4 -width 0 -relwidth 0.408 \
        -height 0 -relheight 0.522 -anchor nw -bordermode ignore 
    place $top.fra60 \
        -in $top -x 0 -relx 0.55 -y 0 -rely 0.4 -width 0 -relwidth 0.408 \
        -height 0 -relheight 0.522 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

