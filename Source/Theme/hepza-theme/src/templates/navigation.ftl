<section class="hmenu pr-5 pl-5">
	<ul class="nav justify-content-between">
		<#list nav_items as nav_item>
			<#if nav_item.hasChildren()>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="${nav_item.getURL()}" id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
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
					<a class="nav-link " href="${nav_item.getURL()}">${nav_item.getName()}</a>
				</li>
			</#if>
		</#list>
	</ul>
</section>