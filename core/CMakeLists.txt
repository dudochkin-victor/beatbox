pkg_check_modules(SQLHEAVY sqlheavy-0.2)
set(ADD_PKG ${ADD_PKG} sqlheavy-0.2)
message("-- Will use sqlheavy-0.2")

vala_precompile(VALA_C
	config.vala
    PluginManager.vala
    Settings.vala
    EqualizerPreset.vala
    SideTreeCategory.vala
    
    LibraryInterface.vala
    LibraryWindowInterface.vala
    ActionsInterface.vala
    FileInterface.vala
    OperationsInterface.vala
    CoverInterface.vala
    PlaybackInterface.vala
    IconsInterface.vala
    InfoInterface.vala
    DatabaseInterface.vala
    PlaylistInterface.vala
    DeviceInterface.vala
    PodcastInterface.vala
    LastFMInterface.vala
    Library.vala
    ListSetupInterface.vala
    MediaEditorInterface.vala
    
    TopDisplayInterface.vala
    NowPlayingViewInterface.vala
    
    CellRenderers/SmartAlbumRenderer.vala
    CellRenderers/CellDataFunctionHelper.vala
    
    Devices/DevicePreferences.vala
	Devices/Device.vala
	    
	Info/BasicInfo.vala
	Info/InfoURL.vala
    Info/TrackInfo.vala
    Info/AlbumInfo.vala
    Info/ArtistInfo.vala
    Info/InfoSource.vala
    Info/Lyrics.vala
    Info/LyricFetcher.vala
    Info/LyricsInterface.vala
    
    Utils/Icon.vala
    Utils/UI.vala
#    Utils/Search.vala
    Utils/TimeUtils.vala
    Utils/String.vala
    Utils/Numeric.vala
    
    Operations/Operation.vala
	Operations/FilesOperation.vala
	Operations/PlaylistOperation.vala
	Operations/ParseRssOperation.vala
	Operations/MediasOperation.vala
	
    #Media/LyricFetcher.vala
    Media/Media.vala
    Media/Preview.vala
    Media/Album.vala
    Media/ExternalAlbum.vala
    Media/Artist.vala
    Media/Genre.vala
    
    Playlists/BasePlaylist.vala
    Playlists/StaticPlaylist.vala
    Playlists/SmartQuery.vala
    Playlists/SmartPlaylist.vala
    
    Preferences/PreferencesSection.vala
    
    Views/View.vala
    Views/TreeViewSetup.vala
    Views/StyledContentBox.vala
    
    Grids/FastGrid.vala
    Grids/FastGridModel.vala
    
    Lists/FastList.vala
    Lists/FastListModel.vala
    Lists/MusicColumn.vala
    Lists/PodcastColumn.vala
    Lists/RadioColumn.vala
    Lists/DuplicateColumn.vala
    
    TopDisplay/Display.vala
    
    Widgets/FieldEditor.vala
    Widgets/NavigationArrows.vala
    Widgets/StyledBox.vala
PACKAGES
    gtk+-3.0
    gdk-x11-3.0
    libpeas-1.0
    peas-gtk
    gee-1.0
    gstreamer-0.10
    gstreamer-interfaces-0.10
    gstreamer-pbutils-0.10
    gstreamer-cdda-0.10
    taglib_c
    granite
    libxml-2.0
    libsoup-2.4
    libgpod-1.0
    ${ADD_PKG}
OPTIONS
    --thread
    --vapidir=${CMAKE_SOURCE_DIR}/vapi
    --target-glib=2.32
    GENERATE_VAPI
    beatbox-core
    GENERATE_HEADER
    beatbox-core
)

add_definitions(${DEPS_CFLAGS} ${SQLHEAVY_CFLAGS})
link_directories(${LIB_PATHS} ${SQLHEAVY_LIBRARY_DIRS})
add_library(beatbox-core SHARED ${VALA_C} )
target_link_libraries(beatbox-core ${DEPS_LIBRARIES} ${SQLHEAVY_LIBRARIES})
install (TARGETS beatbox-core DESTINATION lib)
