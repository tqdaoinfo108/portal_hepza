<section class="hmenu">
	<ul class="nav justify-content-between" id="myTopnav">
		<#list nav_items as nav_item>
			<#if nav_item.hasChildren()>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle text-uppercase" href="${nav_item.getURL()}" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						${nav_item.getName()}
					</a>
					<div class="dropdown-menu p-0" aria-labelledby="navbarDropdown">
						<#list nav_item.getChildren() as nav_child>
							<a class="dropdown-item" href="${nav_child.getURL()}">${nav_child.getName()}</a>
						</#list>
					</div>
				</li>
				<#else>
					<li class="nav-item">
						<a class="nav-link text-uppercase" href="${nav_item.getURL()}">${nav_item.getName()}</a>
					</li>
			</#if>
		</#list>
		<li class="nav-item icon">
			<a href="javascript:void(0);" onclick="myFunction()">
				<i class="icon-align-justify" style="color:#fff;"></i>
			</a>
		</li>
	</ul>
</section>