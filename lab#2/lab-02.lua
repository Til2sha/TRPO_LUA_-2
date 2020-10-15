
lgi = require'lgi' -- подключение модуля lgi
gtk = lgi.Gtk
gtk.init()-- инициализация библиотеки gtk
bld = gtk.Builder()
bld:add_from_file('Koroleva_exe2.glade')
ui = bld.objects
ui.wnd.title = 'lab-02'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()


function ui.btn_add:on_clicked()
  a = tonumber(ui.txt_a.text)
  b = tonumber(ui.txt_b.text)
  ui.lbl_res.label = a + b
end

function ui.btn_sub:on_clicked(...)
  a = tonumber(ui.txt_a.text)
  b = tonumber(ui.txt_b.text)
  ui.lbl_res.label = a - b
end

function ui.btn_mul:on_clicked(...)
  a = tonumber(ui.txt_a.text)
  b = tonumber(ui.txt_b.text)
  ui.lbl_res.label = a * b
end

function ui.btn_div:on_clicked(...)
  a = tonumber(ui.txt_a.text)
  b = tonumber(ui.txt_b.text)
  ui.lbl_res.label = a / b
end

gtk.main()