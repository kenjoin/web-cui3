CKEDITOR.plugins.add( 'nextpage',
{
	init : function( editor )
	{
		// Add the link and unlink buttons.
		//editor.addCommand( 'apage', new CKEDITOR.dialogCommand( 'apage' ) );
		var cmd = {
			exec:function(editor){
				editor.insertHtml('[SITESERVER_PAGE]');
			}
		};

		editor.addCommand( 'nextpage', cmd);
		editor.ui.addButton( 'NextPage',
			{
				label : editor.lang.pagebreak,
				icon : this.path+'nextpage.gif',
				command : 'nextpage'
			} );
	},
 
	requires : [ 'fakeobjects' ]
} );