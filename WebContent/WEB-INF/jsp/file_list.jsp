<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>下载列表</title>
<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="<%=path%>css/app.v2.css" type="text/css" />
</head>
<body>
<section class="vbox">
  <section>
    <section class="hbox stretch">
          <section id="content">
        <section class="vbox">
          <section class="scrollable padder">
            <div class="row">
            <section class="panel panel-default">
              <header class="panel-heading"> 资源列表 </header>
              <div class="row text-sm wrapper">
              <div class="col-sm-3">
            <div class="form-group">
                   <input type="file" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s">
                       </div>
                       </div>
                <div class="col-sm-3">
                  <div class="input-group">
                    <input type="text" class="input-sm form-control" placeholder="Search">
                    <span class="input-group-btn">
                    <button class="btn btn-sm btn-default" type="button">Go!</button>
                    </span> </div>
                </div>
              </div>
              <div class="table-responsive">
                <table class="table table-striped b-t b-light text-sm">
                  <thead>
                    <tr>
                      <th width="20"><input type="checkbox"></th>
                      <th class="th-sortable" data-toggle="class">文件名称 <span class="th-sort"> <i class="fa fa-sort-down text"></i> <i class="fa fa-sort-up text-active"></i> <i class="fa fa-sort"></i> </span> </th>
                      <th>文件大小</th>
                      <th>更新日期</th>
                      <th width="60">状态</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input type="checkbox" name="post[]" value="2"></td>
                      <td>Idrawfast</td>
                      <td>4c</td>
                      <td>Jul 25, 2016</td>
                      <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <footer class="panel-footer">
                <div class="row">
                  <div class="col-sm-4 hidden-xs">
                    <select class="input-sm form-control input-s-sm inline">
                      <option value="0">下载已选</option>
                      <option value="1">删除已选</option>
                    </select>
                    <button class="btn btn-sm btn-default">确定</button>
                  </div>
                  <div class="col-sm-4 text-center"> <small class="text-muted inline m-t-sm m-b-sm">此数据仅供方便下载</small> </div>
                  <div class="col-sm-4 text-right text-center-xs">
                    <ul class="pagination pagination-sm m-t-none m-b-none">
                      <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                  </div>
                </div>
              </footer>
            </section>
          </section>
        </section>
        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a> </section>
      <aside class="bg-light lter b-l aside-md hide" id="notes">
        <div class="wrapper">Notification</div>
      </aside>
    </section>
  </section>
</section>
<script src="<%=path%>js/app.v2.js"></script> <!-- Bootstrap --> <!-- App --> 
<script src="<%=path%>js/jquery.sparkline.min.js" cache="false"></script>
<script src="<%=path%>js/bootstrap-filestyle.min.js" cache="false"></script>
</body>
</html>