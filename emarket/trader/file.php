<?php
$conn = oci_connect('example', 'example', '//localhost/xe'); ;
if (!$conn) {
$e = oci_error();
trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}
?>