#region Script Settings
#<ScriptSettings xmlns="http://tempuri.org/ScriptSettings.xsd">
#  <ScriptPackager>
#    <process>powershell.exe</process>
#    <arguments />
#    <extractdir>%TEMP%</extractdir>
#    <files />
#    <usedefaulticon>true</usedefaulticon>
#    <showinsystray>false</showinsystray>
#    <altcreds>false</altcreds>
#    <efs>true</efs>
#    <ntfs>true</ntfs>
#    <local>false</local>
#    <abortonfail>true</abortonfail>
#    <product />
#    <version>1.0.0.1</version>
#    <versionstring />
#    <comments />
#    <company />
#    <includeinterpreter>false</includeinterpreter>
#    <forcecomregistration>false</forcecomregistration>
#    <consolemode>false</consolemode>
#    <EnableChangelog>false</EnableChangelog>
#    <AutoBackup>false</AutoBackup>
#    <snapinforce>false</snapinforce>
#    <snapinshowprogress>false</snapinshowprogress>
#    <snapinautoadd>2</snapinautoadd>
#    <snapinpermanentpath />
#    <cpumode>1</cpumode>
#    <hidepsconsole>false</hidepsconsole>
#  </ScriptPackager>
#</ScriptSettings>
#endregion

#region ScriptForm Designer

#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Post-Constructor Custom Code

#endregion

#region Form Creation
#Warning: It is recommended that changes inside this region be handled using the ScriptForm Designer.
#When working with the ScriptForm designer this region and any changes within may be overwritten.
#~~< Form1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Form1 = New-Object System.Windows.Forms.Form
$Form1.ClientSize = New-Object System.Drawing.Size(501, 209)
$Form1.Text = "CyberArk - GetPassword GUI"
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Location = New-Object System.Drawing.Point(13, 148)
$GroupBox2.Size = New-Object System.Drawing.Size(475, 52)
$GroupBox2.TabIndex = 1
$GroupBox2.TabStop = $false
$GroupBox2.Text = "Password"
#~~< ButtonCopy >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCopy = New-Object System.Windows.Forms.Button
$ButtonCopy.Location = New-Object System.Drawing.Point(369, 20)
$ButtonCopy.Size = New-Object System.Drawing.Size(100, 23)
$ButtonCopy.TabIndex = 10
$ButtonCopy.Text = "Copy"
$ButtonCopy.UseVisualStyleBackColor = $true
$ButtonCopy.add_Click({ButtonCopyClick($ButtonCopy)})
#~~< TextBoxPassword >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxPassword = New-Object System.Windows.Forms.TextBox
$TextBoxPassword.Enabled = $false
$TextBoxPassword.Location = New-Object System.Drawing.Point(113, 22)
$TextBoxPassword.ReadOnly = $true
$TextBoxPassword.Size = New-Object System.Drawing.Size(250, 20)
$TextBoxPassword.TabIndex = 9
$TextBoxPassword.Text = ""
#~~< ButtonGetPassword >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonGetPassword = New-Object System.Windows.Forms.Button
$ButtonGetPassword.Location = New-Object System.Drawing.Point(7, 20)
$ButtonGetPassword.Size = New-Object System.Drawing.Size(101, 23)
$ButtonGetPassword.TabIndex = 8
$ButtonGetPassword.Text = "Get Password"
$ButtonGetPassword.UseVisualStyleBackColor = $true
$ButtonGetPassword.add_Click({ButtonGetPasswordClick($ButtonGetPassword)})
$GroupBox2.Controls.Add($ButtonCopy)
$GroupBox2.Controls.Add($TextBoxPassword)
$GroupBox2.Controls.Add($ButtonGetPassword)
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Location = New-Object System.Drawing.Point(13, 13)
$GroupBox1.Size = New-Object System.Drawing.Size(475, 129)
$GroupBox1.TabIndex = 0
$GroupBox1.TabStop = $false
$GroupBox1.Text = "Configuration"
#~~< TextBoxAccount >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxAccount = New-Object System.Windows.Forms.TextBox
$TextBoxAccount.Location = New-Object System.Drawing.Point(113, 101)
$TextBoxAccount.Size = New-Object System.Drawing.Size(356, 20)
$TextBoxAccount.TabIndex = 7
$TextBoxAccount.Text = "<MyObjectName>"
#~~< TextBoxSafe >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxSafe = New-Object System.Windows.Forms.TextBox
$TextBoxSafe.Location = New-Object System.Drawing.Point(113, 74)
$TextBoxSafe.Size = New-Object System.Drawing.Size(356, 20)
$TextBoxSafe.TabIndex = 6
$TextBoxSafe.Text = "<MySafeName>"
#~~< TextBoxAppID >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxAppID = New-Object System.Windows.Forms.TextBox
$TextBoxAppID.Location = New-Object System.Drawing.Point(113, 47)
$TextBoxAppID.Size = New-Object System.Drawing.Size(356, 20)
$TextBoxAppID.TabIndex = 5
$TextBoxAppID.Text = "<MyAppID>"
#~~< TextBoxURI >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxURI = New-Object System.Windows.Forms.TextBox
$TextBoxURI.Location = New-Object System.Drawing.Point(113, 17)
$TextBoxURI.Size = New-Object System.Drawing.Size(356, 20)
$TextBoxURI.TabIndex = 4
$TextBoxURI.Text = "https://<MyServer>/AIMWebService/V1.1/AIM.asmx?WSDL"
$TextBoxURI.add_TextChanged({TextBox1TextChanged($TextBoxURI)})
#~~< Label4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Location = New-Object System.Drawing.Point(7, 101)
$Label4.Size = New-Object System.Drawing.Size(100, 23)
$Label4.TabIndex = 3
$Label4.Text = "Account"
#~~< Label3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Location = New-Object System.Drawing.Point(7, 74)
$Label3.Size = New-Object System.Drawing.Size(100, 23)
$Label3.TabIndex = 2
$Label3.Text = "Safe"
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Location = New-Object System.Drawing.Point(7, 47)
$Label2.Size = New-Object System.Drawing.Size(100, 23)
$Label2.TabIndex = 1
$Label2.Text = "App ID"
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Location = New-Object System.Drawing.Point(7, 20)
$Label1.Size = New-Object System.Drawing.Size(100, 23)
$Label1.TabIndex = 0
$Label1.Text = "Webservices URI"
$GroupBox1.Controls.Add($TextBoxAccount)
$GroupBox1.Controls.Add($TextBoxSafe)
$GroupBox1.Controls.Add($TextBoxAppID)
$GroupBox1.Controls.Add($TextBoxURI)
$GroupBox1.Controls.Add($Label4)
$GroupBox1.Controls.Add($Label3)
$GroupBox1.Controls.Add($Label2)
$GroupBox1.Controls.Add($Label1)
$Form1.Controls.Add($GroupBox2)
$Form1.Controls.Add($GroupBox1)

#endregion

#region Custom Code

function getPassword {
		param ([parameter(Mandatory=$true)]$objectName)
		$proxy = New-WebServiceProxy -Uri $TextBoxURI.Text
		$t = $proxy.getType().namespace
		$request = New-Object ($t + ".passwordRequest")
		$Request.AppID = $TextBoxAppID.Text;
		$request.Query = "Safe=$($TextBoxSafe.Text);Folder=Root;Object=$objectName";
		$response = $proxy.GetPassword($request)
		return $response.Content
}

#endregion

#region Event Loop

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	[System.Windows.Forms.Application]::Run($Form1)
}

#endregion

#endregion

#region Event Handlers

function ButtonGetPasswordClick( $object ){
	$Pwd = getPassword $TextBoxAccount.Text
	$TextBoxPassword.Text = $Pwd
}

function ButtonCopyClick( $object ){
	[System.Windows.Forms.Clipboard]::SetText($TextBoxPassword.Text.Trim())

}

function TextBox1TextChanged( $object ){

}

Main # This call must remain below all other event functions

#endregion
