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
using App.Widgets;

namespace App.Views {

    /**
     * The {@code AppView} class.
     *
     * @since 1.0.0
     */

    public class EditView : Gtk.Box {

        /**
         * Constructs a new {@code AppView} object.
         */

        public Gtk.TextBuffer TextBuffer;

        public EditView () {
            var PageScroll = new Gtk.ScrolledWindow (null, null);
            var PageViewWrapper = new Gtk.Grid ();
            var PageView = new Gtk.Grid ();
            PageView.set_name ("PageView");
            PageView.get_style_context ().add_class (Granite.STYLE_CLASS_CARD);
            PageView.set_margin_top (12);
            PageView.set_margin_bottom (12);
            PageView.set_margin_left (12);
            PageView.set_margin_right (12);
            PageView.set_property ("height-request", 1123);
            PageView.set_property ("width-request", 794);
//            PageView.set_hexpand (false);
//            PageView.set_vexpand (false);
            PageViewWrapper.set_property ("valign", Gtk.Align.CENTER);
            PageViewWrapper.set_property ("halign", Gtk.Align.CENTER);
            PageViewWrapper.add (PageView);
            PageScroll.add (PageViewWrapper);
          
            var TextView = new Gtk.TextView ();
            TextBuffer = TextView.get_buffer ();
            PageView.add (TextView);
            TextView.set_hexpand (true);
            TextView.set_vexpand (true);
            TextView.set_margin_top (100);
            TextView.set_margin_bottom (100);
            TextView.set_margin_left (50);
            TextView.set_margin_right (50);
            TextView.set_wrap_mode (Gtk.WrapMode.WORD);
            PageView.set_margin_right (50);
        
            //TextBuffer.connect ("mark-set", get_bounds);
  
            this.add (PageScroll);
        }
    }
}
