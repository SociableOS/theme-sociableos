<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="motd">
	<div data-widget-area="motd">
		{{{each widgets.motd}}}
		{{widgets.motd.html}}
		{{{end}}}
	</div>
    <div id="carouselExample" class="carousel slide">
     <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
        <img src="/assets/plugins/nodebb-theme-sociableos/assets/categories/hero2.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
        <img src="/assets/plugins/nodebb-theme-sociableos/assets/categories/hero2.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
        <img src="/assets/plugins/nodebb-theme-sociableos/assets/categories/hero2.png" class="d-block w-100" alt="...">
        </div>
    </div>
    </div>
</div>

<div class="row categories" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length --> clearfix">
		{{{ if pagination.pages.length }}}
		<div><!-- IMPORT partials/category-selector.tpl --></div>
		{{{ end }}}
		<div class="row">
			{{{each categories}}}
			<div component="categories/category" class="{categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				<meta itemprop="name" content="{categories.name}">

				<!-- IF categories.link -->
				<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
				<!-- ELSE -->
				<a style="color: {categories.color};" href="{config.relative_path}/category/{categories.slug}" itemprop="url">
				<!-- ENDIF categories.link -->
					<div
						id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}"
						title="{categories.description}"
						style="
							<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
							<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
						"
					>
						<div id="category-{categories.cid}" class="category-slider-{categories.numRecentReplies}">

							{{{each posts}}}
							<div component="category/posts" class="category-box">
								<div class="post-preview">
									{buildAvatar(categories.posts.user, "sm", false, "pull-left")}
									<p class=""><strong>{categories.posts.user.displayname}</strong>: {categories.posts.content}</p>
								</div>
							</div>
							{{{end}}}
						</div>
					</div>
				</a>
			</div>
			{{{end}}}
		</div>
		<!-- IMPORT partials/paginator.tpl -->
	</div>

	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>