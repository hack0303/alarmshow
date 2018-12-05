<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#nav .row{
background:#16A085;
color:white;
}
#nav .row .two{
background:#1ABC9C;
}
</style>
<div id="nav" class="pointer">
<div class="share mrl row">
            <ul>
              <li>
                <label class="share-label" for="share-toggle2">告警数据</label>
                <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-animate bootstrap-switch-on"><div class="bootstrap-switch-container" style=""><span class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label class="bootstrap-switch-label">&nbsp;</label><span class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input type="checkbox" data-toggle="switch"></div></div>
              </li>
              <li>
                <label class="share-label" for="share-toggle4">规则数据</label>
                <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-animate bootstrap-switch-on"><div class="bootstrap-switch-container" style=""><span class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label class="bootstrap-switch-label">&nbsp;</label><span class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input type="checkbox" checked="" data-toggle="switch"></div></div>
              </li>
            </ul>
            <a href="#" class="btn btn-primary btn-block btn-large">运行</a>
            
            <a href="#" class="btn btn-primary btn-block btn-large">重置</a>
            
            <a href="#" class="btn btn-primary btn-block btn-large">告警数据预览</a>
            
            <a href="#" class="btn btn-primary btn-block btn-large">规则数据预览</a>
            
            <a href="#" class="btn btn-primary btn-block btn-large">系统参数设置</a>
          </div>
</div>