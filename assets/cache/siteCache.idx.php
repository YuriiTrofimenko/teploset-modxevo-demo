<?php
$c=&$this->config;$c['settings_version']="";$c['manager_theme']="MODxRE2";$c['server_offset_time']="0";$c['manager_language']="russian-UTF8";$c['modx_charset']="UTF-8";$c['site_name']="My MODX Site";$c['site_start']="1";$c['error_page']="1";$c['unauthorized_page']="1";$c['site_status']="1";$c['auto_template_logic']="parent";$c['default_template']="3";$c['old_template']="";$c['cache_type']="1";$c['use_udperms']="1";$c['udperms_allowroot']="0";$c['failed_login_attempts']="3";$c['blocked_minutes']="60";$c['use_captcha']="0";$c['emailsender']="tyaa@ukr.net";$c['use_editor']="1";$c['use_browser']="1";$c['fe_editor_lang']="russian-UTF8";$c['session.cookie.lifetime']="604800";$c['theme_refresher']="";$c['site_id']="5aeee1e286fbd";$this->aliasListing=array();$a=&$this->aliasListing;$d=&$this->documentListing;$m=&$this->documentMap;$d['minimal-base'] = 1;$a[1] = array('id' => 1, 'alias' => 'minimal-base', 'path' => '', 'parent' => 0, 'alias_visible' => 1, 'isfolder' => 0);$m[] = array('0' => '1');$d['accounts'] = 2;$a[2] = array('id' => 2, 'alias' => 'accounts', 'path' => '', 'parent' => 0, 'alias_visible' => 1, 'isfolder' => 0);$m[] = array('0' => '2');$c = &$this->contentTypes;$c = &$this->chunkCache;$c['accountsAjax'] = '[!accounts!]';$s=&$this->snippetCache;$s['accounts']='//if ($_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\') {
$base_url = "http://192.168.0.106:8080/TeplosetEJB-war";
$accounts_url = "/account";


if(isset($_REQUEST[\'action\'])){

    switch ($_REQUEST[\'action\']) {
    	case \'fetch-range\':
    		$accounts_url =
    			$accounts_url."?action=fetch-range&from=".$_REQUEST[\'from\']."&to=".$_REQUEST[\'to\'];
    		break;
    	case \'fetch-by-id\':
    		$accounts_url =
    			$accounts_url."?action=fetch-by-id&id=".$_REQUEST[\'id\'];
    		break;
    	default:
    		# code...
    		break;
    }
}

$inputJson = file_get_contents($base_url.$accounts_url);
return $inputJson;
//return $accounts_url ;
//}';$p=&$this->pluginCache;$p['FileSource']='require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';';$e = &$this->pluginEvent;$e['OnBeforePluginFormSave']=array('FileSource');$e['OnBeforeSnipFormSave']=array('FileSource');$e['OnPluginFormPrerender']=array('FileSource');$e['OnPluginFormRender']=array('FileSource');$e['OnSnipFormPrerender']=array('FileSource');$e['OnSnipFormRender']=array('FileSource');