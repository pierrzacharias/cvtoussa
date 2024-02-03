zathura -x "gvim --servername vim -c \"let g:syncpdf='$1'\" --remote +%{line} %{input}" $1

