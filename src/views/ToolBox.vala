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

    public class ToolBox : Gtk.Box {

        /**
         * Constructs a new {@code AppView} object.
         */

        public ToolBox () {

                var OuterBox = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 0);
                
                var ToolSelectViewWrapper = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);
                
                var ToolSelectView = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);

                
                var HomeButton = new Gtk.RadioButton.from_widget (null);
                var HomeButtonIcon = new Gtk.Image.from_icon_name ("go-home-symbolic", Gtk.IconSize.LARGE_TOOLBAR);
                HomeButton.set_property ("draw_indicator", false);
                HomeButton.add(HomeButtonIcon);
                HomeButton.set_property ("width-request", 40);
                HomeButton.set_property ("height-request", 40);
//                HomeButton.connect ("toggled", self.set_visible, toolstack, "home_toolbox");
                ToolSelectView.pack_start (HomeButton, false, false, 0);
              
                var InsertButton = new Gtk.RadioButton.from_widget (HomeButton);
                var InsertButtonIcon = new Gtk.Image.from_icon_name ("list-add-symbolic", Gtk.IconSize.LARGE_TOOLBAR);
                InsertButton.set_property ("draw_indicator", false);
                InsertButton.add (InsertButtonIcon);
                InsertButton.set_property ("width-request", 40);
                InsertButton.set_property ("height-request", 40);
//                InsertButton.connect ("toggled", self.set_visible, toolstack, "insert_toolbox");
                ToolSelectView.pack_start (InsertButton, false, false, 0);
              
                var PageButton = new Gtk.RadioButton.from_widget (HomeButton);
                var PageButtonIcon = new Gtk.Image.from_icon_name ("view-paged-symbolic", Gtk.IconSize.LARGE_TOOLBAR);
                PageButton.set_property ("draw_indicator", false);
                PageButton.add (PageButtonIcon);
                PageButton.set_property ("width-request", 40);
                PageButton.set_property ("height-request", 40);
                ToolSelectView.pack_start (PageButton, false, false, 0);
              
                var ReviewButton = new  Gtk.RadioButton.from_widget (HomeButton);
                var ReviewButtonIcon = new Gtk.Image.from_icon_name ("tools-check-spelling-symbolic", Gtk.IconSize.LARGE_TOOLBAR);
                ReviewButton.set_property ("draw_indicator", false);
                ReviewButton.add (ReviewButtonIcon);
                ReviewButton.set_property ("width-request", 40);
                ReviewButton.set_property ("height-request", 40);
                ToolSelectView.pack_start (ReviewButton, false, false, 0);
              
                var ViewButton = new Gtk.RadioButton.from_widget (HomeButton);
                var ViewButtonIcon = new Gtk.Image.from_icon_name ("view-filter-symbolic", Gtk.IconSize.LARGE_TOOLBAR);
                ViewButton.set_property ("draw_indicator", false);
                ViewButton.add (ViewButtonIcon);
                ViewButton.set_property ("width-request", 40);
                ViewButton.set_property ("height-request", 40);
                ToolSelectView.pack_start (ViewButton, false, false, 0);
              
                ToolSelectView.get_style_context ().add_class ("linked");

                var toolseparator = new Gtk.Separator(orientation=Gtk.Orientation.HORIZONTAL);

                ToolSelectViewWrapper.pack_start (ToolSelectView, true, false, 0);

                OuterBox.pack_start (ToolSelectViewWrapper, false, false, 10);
                OuterBox.pack_end (toolseparator, false, false, 0);

                this.add(OuterBox);
            
         }
    }
}
