namespace Build {
	public const string DATADIR = "/usr/share";
	public const string PKG_DATADIR = "/usr/share/beatbox";
	public const string ICON_DIR = "/usr/share/beatbox/icons/hicolor";
	public const string SCHEMA_DIR = "/usr/share/beatbox/database";
	public const string PLUGIN_DIR = "/usr/lib/beatbox/plugins";
	public const string GETTEXT_PACKAGE = "beatbox";
	public const string RELEASE_NAME = "Everlong";
	public const string VERSION = "0.7";
	public const string VERSION_INFO = "Pre-Release";
	public const string CMAKE_INSTALL_PREFIX = "/usr";

	/**
	 * Translatable launcher (.desktop) strings to be added to
	 * template (.pot) file. These strings should reflect any
     * changes in these launcher keys in .desktop file.
     */
	public const string COMMENT = N_("Listen to music, podcasts and stations");
	public const string GENERIC = N_("Audio Player");
	public const string FULL_NAME = N_("BeatBox Audio Player");
}
