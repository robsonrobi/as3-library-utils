/**
 * Created with IntelliJ IDEA.
 * User: Jerry_Orta
 * Date: 5/1/13
 * Time: 1:22 PM
 *
 */
package utils.filenames {

    public function getFileExtension(value:String):String {
        var lastDotIndex:Number = value.lastIndexOf( "." );
        //trace( "lastSlashIdx: " + lastSlashIdx );
        return value.slice( lastDotIndex + 1, value.length).toLowerCase();
    }

}
