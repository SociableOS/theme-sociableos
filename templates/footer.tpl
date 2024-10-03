
			</div><!-- /.container#content -->

            <ul class="cards-stack card-picker">
                <!--<li class="card card-1" style="width: 10rem;">
                    <img src="/assets/plugins/nodebb-theme-sociableos/assets/1.jpg" class="card-img-top" alt="..."/>
                    <div class="card-body">
                        <h5 class="card-title">Make it Rain</h5>
                        <p class="card-text">Make it rain in a friend's game!</p>
                    </div>
                </li>
                <li class="card card-2" style="width: 10rem;">
                    <img src="/assets/plugins/nodebb-theme-sociableos/assets/2.jpg" class="card-img-top" alt="..."/>
                    <div class="card-body">
                        <h5 class="card-title">Make it Rain</h5>
                        <p class="card-text">Make it rain in a friend's game!</p>
                    </div>
                </li>
                <li class="card card-3" style="width: 10rem;">
                    <img src="/assets/plugins/nodebb-theme-sociableos/assets/5.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Make it Rain</h5>
                        <p class="card-text">Make it rain in a friend's game!</p>
                    </div>
                </li>-->
            </ul>


		</main>
		<!-- IMPORT partials/sidebar-right.tpl -->
	</div>
	<!-- IMPORT partials/mobile-footer.tpl -->
	{{{ if !isSpider }}}
	<div>
		<div component="toaster/tray" class="alert-window fixed-bottom mb-5 mb-md-2 me-2 me-md-5 ms-auto" style="width:300px; z-index: 1090;">
			<!-- IMPORT partials/reconnect-alert.tpl -->
		</div>
	</div>
	{{{ end }}}

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
