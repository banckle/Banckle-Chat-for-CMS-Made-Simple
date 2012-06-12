<link href="../modules/BanckleChat/css/style.css" rel="stylesheet" type="text/css" />
<div class="blc-main-container">

{if $data.panel == "activate"}
<div id="panel_activate">
<form method="post" action="">
 <input type="hidden" name="panel" value="activate">
 <input type="hidden" name="active" value="1">
<div class="blc-signin-container">	
    <div class="blc-signin-top">
    	<h1><img src="../modules/BanckleChat/images/blc_signin.png" /> Banckle Chat - SignIn</h1>
        <div class="blc-signin-top-right"><a href="{$data.dashboard_url}">Dashboard</a></div>
    </div>        
    <div class="blc-signin-content">    
    {if $data.login_error != ""}
        <p style="color:red;">{$data.login_error}</p>
        <div class="seprator" style="margin-left:-10px;">&nbsp;</div>
    {/if}        
    <h2>Username</h2>
    <input type="text" name="user" value="" />
    
    <h2>Password</h2>
    <input type="password" name="password" value="" />
         
    </div>    	       
    <div class="blc-signin-bottom-left"><button type="submit" class="btn-signin">Sign In</button></div>         
    
    <div class="seprator">&nbsp;</div>
    
    <div class="blc-signin-signup-area">Don't have a Banckle account? <a href="http://banckle.com/action/signup" target="_blank">Sign Up</a> now</div>
   
    <div class="clear1">&nbsp;</div>
    
</div>
<div class="clear1">&nbsp;</div>
</form>
</div>	

{elseif $data.panel == "deployments"}
<div id="panel_deployments">
<form method="post" action="">
<div class="blc-signin-container">	
    <div class="blc-signin-top">
    	<h1><img src="../modules/BanckleChat/images/blc_signin.png" /> Banckle Chat - Select Deployment</h1>
        <div class="blc-signin-top-right"><a href="{$data.dashboard_url}">Dashboard</a></div>
    </div>        
    <div class="blc-signin-content">    
    {if $data.deploy_error != ""}
        <p style="color:red;">{$data.deploy_error}</p>
        <div class="seprator" style="margin-left:-10px;">&nbsp;</div>
    {else}        
    <h2>Select Deployment</h2>
    <select name="deployId" id="deployId">
        {foreach from=$data.deployments item=deployment}
        <option value="{$deployment.id}">{$deployment.name}</option>
        {/foreach}
    </select>     
    {/if}
    </div>    	       
    <div class="blc-signin-bottom-left"><button type="submit" name="activate" class="btn-signin">Activate</button></div>         
    
    <div class="seprator">&nbsp;</div>        
   
    <div class="clear1">&nbsp;</div>    
</div>
<div class="clear1">&nbsp;</div>
</form>
	<form method="post" action="">
    	
    </form>
</div>
{elseif $data.panel == "settings"}
<div id="panel_settings">
<form method="post" action="">
<div class="blc-signin-container">	
    <div class="blc-signin-top">
    	<h1><img src="../modules/BanckleChat/images/blc_signin.png" /> Banckle Chat - Settings</h1>
        <div class="blc-signin-top-right"><a href="{$data.dashboard_url}">Dashboard</a></div>
    </div>        
    <div class="blc-signin-content">        
        <p>Banckle Chat is Successfully Activated.</p>
        <div class="seprator" style="margin-left:-10px;">&nbsp;</div>   
    </div>    	       
    <div class="blc-signin-bottom-left"><button type="submit" name="deactivate" class="btn-signin">Deactivate Banckle Chat</button></div>         
    
    <div class="seprator">&nbsp;</div>        
   
    <div class="clear1">&nbsp;</div>    
</div>
<div class="clear1">&nbsp;</div>
</form>
	<form method="post" action="">
    	
    </form>
</div>
{else}
<div id="panel_default">
{if $data.active == 1}
	<p>Banckle Chat is successfully enabled. <a href="{$data.current_url}&panel=settings"><strong>Settings</strong></a></p>
{else}
<p>Banckle Chat is disabled. Please go to <a href="{$data.current_url}&panel=activate"><strong>page</strong></a> to enable it.</p>
{/if}
<iframe src="http://apps.banckle.com/livechat" width="100%" height="800" frameborder="0" scrolling="no"></iframe>
</div>
{/if}
</div> <!-- Main Container Ends Here !-->