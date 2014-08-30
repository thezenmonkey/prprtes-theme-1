<div id="MortgageCalculator" class="panel clear">
	<div class="row">
		<div class="small-12 columns">
			<span class="calc-head">Mortgage Calculator</span>
			<form id="MortgageCalculator" name="MortgageMinder" data-h5-instanceid="0" novalidate="novalidate" data-equalizer>
				<div class="row collapse">
					<div class="small-12 columns">
						<label for="price">Price $FormattedPrice <% if $Status == "Available" %><small>$Address</small><% end_if %></label>
					</div>
					<div class="small-2 columns">
						<span class="prefix">$</span>
					</div>
					<div class="small-10 columns">
						<input name="price" type="text" value="$Price">
					</div>
				</div>
				<div class="row collapse">
					<div class="small-12 columns">
						<label for="price">Down Payment <small>default {$SiteConfig.DownPayment}%</small></label>
					</div>
					<div class="small-2 columns">
						<span class="prefix">$</span>
					</div>
					<div class="small-10 columns">
						<input name="dp" type="text" value="$DownPayment">
					</div>
				</div>
				<div class="row collapse">
					<div class="small-12 columns">
						<label for="price">Preferred* <small>Annual Interest Rate</small></label>
					</div>
					<div class="small-10 columns">
						<input name="ir" type="text" value="$SiteConfig.InterestRate">
					</div>
					<div class="small-2 columns">
						<span class="postfix">%</span>
					</div>
				</div>
				<div class="row collapse">
					<div class="small-12 columns">
						<label for="term">Term <small>&nbsp;</small></label>
					</div>
					<div class="small-10 columns">
						<input class="term" name="term" type="number" value="30">
					</div>
					<div class="small-2 columns">
						<span class="postfix term">Years</span>
					</div>
				</div>
				<div class="row collapse">
					<div class="small-12 columns">
						<span class="paymentTotal"><strong>Monthly Payment = <span id="pmt" class="label radius success">$MonthlyPrice</span></strong></span>
					</div>
					<div class="small-12 columns"><small>*preferred interest rate based on a fixed 5 (five) year term</small></div>
				</div>
			</form>
		</div>
	</div>
</div>