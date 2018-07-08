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

using App.Widgets;
using App.Views;

namespace App.Controllers {

    /**
     * The {@code AppController} class.
     *
     * @since 1.0.0
     */
    public class AppController {

        private Gtk.Application            application;
        private EditView                   edit_view;
        private Navigation                    tool_box;
        private Gtk.HeaderBar              headerbar;
        private Gtk.ApplicationWindow      window { get; private set; default = null; }

        /**
         * Constructs a new {@code AppController} object.
         */
        public AppController (Gtk.Application application) {

            this.application = application;
            this.window = new Window (this.application);
            this.headerbar = new HeaderBar ();
            this.edit_view = new EditView ();
            this.tool_box = new Navigation ();

            var paned = new Gtk.Paned (Gtk.Orientation.HORIZONTAL);
            paned.pack1 (this.tool_box, true, false);
            paned.pack2 (this.edit_view, true, true);
            paned.set_position (10);

            this.window.add (paned);
            this.window.set_default_size (1300, 800);
            this.window.set_size_request (800, 640);
            this.window.set_titlebar (this.headerbar);
            this.application.add_window (window);
           
        }

        public void activate () {
            window.show_all ();
            edit_view.activate ();
        }

        public void quit () {
            window.destroy ();
        }
    }
}
