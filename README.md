# flutterapp

Learn Flutter app

## iOS allow http
add below into Info.plist in ios/Runner
```xml
<key>NSAppTransportSecurity</key>
<dict>
	<key>NSExceptionDomains</key>
	<dict>
			<key>m.app.haosou.com</key>
			<dict>
					<key>NSIncludesSubdomains</key>
					<true/>
					<key>NSExceptionRequiresForwardSecrecy</key>
					<false/>
					<key>NSExceptionAllowsInsecureHTTPLoads</key>
					<true/>
			</dict>
			<key>p0.qhimg.com</key>
			<dict>
					<key>NSIncludesSubdomains</key>
					<true/>
					<key>NSExceptionRequiresForwardSecrecy</key>
					<false/>
					<key>NSExceptionAllowsInsecureHTTPLoads</key>
					<true/>
			</dict>
	</dict>
</dict>
```