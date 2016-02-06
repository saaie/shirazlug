using Gtk;

class HelloGtk
{
    public static int main(string[] args)
    {
        Gtk.init(ref args);

	var win = new Window ();
        win.destroy.connect(Gtk.main_quit);
	win.window_position = WindowPosition.CENTER;
	win.set_default_size (350, 70);
        (win as Gtk.Window).set_title("Hello ShirazLUG");
	var button = new Button.with_label ("Click me!");
    	button.clicked.connect (() => {
        	button.label = "Shiraz LUG!!!";
    	});

    	win.add (button);
        win.show_all();
        
        Gtk.main();

        return 0;
    }
}
