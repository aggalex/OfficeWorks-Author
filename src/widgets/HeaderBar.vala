/*
* Copyright (C) 2018  Alex Angelou <ubuntu1aggelalex@gmail.com>
* 
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

using App.Configs;

namespace App.Widgets {

    /**
     * The {@code HeaderBar} class is responsible for displaying top bar. Similar to a horizontal box.
     *
     * @see Gtk.HeaderBar
     * @since 1.0.0
     */
    public class HeaderBar : Gtk.HeaderBar {

//        private Gdk.Pixbuf Gdk;

        public signal void menu_clicked ();
        public Gtk.MenuButton menu_button { get; private set; }

        /**
         * Constructs a new {@code HeaderBar} object.
         *
         * @see App.Configs.Properties
         * @see icon_settings
         */
        public HeaderBar () {
            
            var mainbt = new Gtk.Button ();
            mainbt.set_name ("mainbt");
            mainbt.set_property ("width-request", 50);
            mainbt.set_property ("height-request", 30);
            mainbt.get_style_context ().add_class ("mainbt");
            try {
                var logopixbuf = new Gdk.Pixbuf.from_file_at_scale (Constants.URL_MAIN_BT_IMAGE, 40, 20, true);
                var logo = new Gtk.Image.from_pixbuf (logopixbuf);
                mainbt.add (logo);
            } catch (Error e) {
             		// Output:
             		//  ``Message: "My error msg"``
            		//  ``Error code: FileError.EXIST = 2``
            		//  ``FileErrors identification: 51``
            		print ("Message: Can't load button icon: \"%s\"\n", e.message);
            		print ("Error code: FileError.EXIST = %d\n", e.code);
            		print ("FileErrors identification: %" + uint32.FORMAT + "\n", e.domain);
            };
            this.pack_start (mainbt);
            
            var vseparator = new Gtk.Separator (Gtk.Orientation.VERTICAL);
            this.pack_start (vseparator);
            
            var new_doc = new Gtk.ToolButton (null, null);
            new_doc.set_icon_name ("document-new");
            this.pack_start (new_doc);
            
            var undo = new Gtk.ToolButton (null, null);
            undo.set_icon_name ("undo");
            this.pack_start (undo);
            
            var redo = new Gtk.ToolButton (null, null);
            redo.set_icon_name ("redo");
            this.pack_start (redo);
            
            var printpg = new Gtk.ToolButton (null, null);
            printpg.set_icon_name ("document-print");
            this.pack_start (printpg);
            
            var printpgprev = new Gtk.ToolButton (null, null);
            printpgprev.set_icon_name ("document-print-preview");
            this.pack_start (printpgprev);

            menu_button = new Gtk.MenuButton ();
            menu_button.set_image (new Gtk.Image .from_icon_name ("open-menu-symbolic", Gtk.IconSize.LARGE_TOOLBAR));
            menu_button.tooltip_text = _("Settings");
            menu_button.clicked.connect (() => {
                menu_clicked ();
            });

            this.set_title ("");
            this.show_close_button = true;
            this.pack_end (menu_button);

            try {
                var hbbgpixbuf = new Gdk.Pixbuf.from_file_at_scale (Constants.URL_HEADERBAR_BACKGROUND, 250, 250, true);
                var headerbarbg = new Gtk.Image.from_pixbuf (hbbgpixbuf);
                this.pack_end (headerbarbg);
            } catch (FileError e) {
             		// Output:
             		//  ``Message: "My error msg"``
            		//  ``Error code: FileError.EXIST = 2``
            		//  ``FileErrors identification: 51``
            		print ("Message: Can't load headerbar background: \"%s\"\n", e.message);
            		print ("Error code: FileError.EXIST = %d\n", e.code);
            		print ("FileErrors identification: %" + uint32.FORMAT + "\n", e.domain);
            };
        }
    }
}
