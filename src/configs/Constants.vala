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

namespace App.Configs {

    /**
     * The {@code Constants} class is responsible for defining all 
     * the constants used in the application.
     *
     * @since 1.0.0
     */
    public class Constants {
    
        public abstract const string ID = "com.github.aggalex.ow-author";
        public abstract const string VERSION = "1.0.0";
        public abstract const string PROGRAME_NAME = "Officeworks Author";
        public abstract const string APP_YEARS = "2018";
        public abstract const string APP_ICON = "com.github.aggalex.ow-author";
        public abstract const string ABOUT_COMMENTS = "The modern text editor";
        public abstract const string TRANSLATOR_CREDITS = "Translators";
        public abstract const string MAIN_URL = "{{ website-url }}";
        public abstract const string BUG_URL = "https://github.com/aggalex/OfficeWorks-Author/issues";
        public abstract const string HELP_URL = "https://github.com/aggalex/OfficeWorks-Author/wiki";
        public abstract const string TRANSLATE_URL = "https://github.com/aggalex/OfficeWorks-Author";
        public abstract const string TEXT_FOR_ABOUT_DIALOG_WEBSITE = "Website";
        public abstract const string TEXT_FOR_ABOUT_DIALOG_WEBSITE_URL = "{{ website-url }}";
        public abstract const string URL_CSS = "/com/github/aggalex/ow-author/css/style.css";
        public abstract const string URL_MAIN_BT_IMAGE = "/com/github/aggalex/ow-author/images/headerbar/Icon.png";
        public abstract const string URL_HEADERBAR_BACKGROUND = "/com/github/aggalex/ow-author/images/headerbar/headerbarbg.png";
        public abstract const string [] ABOUT_AUTHORS = { "Alex Angelou <ubuntu1aggelalex@gmail.com>" };
        public abstract const Gtk.License ABOUT_LICENSE_TYPE = Gtk.License.GPL_3_0;
    }
}
