
$images = @(
    @{ Name="hero-bg.svg"; Width=1920; Height=1080; Color="#231713"; Text="Hero Background" },
    @{ Name="special-1.svg"; Width=400; Height=300; Color="#A67B5B"; Text="Morning Bliss" },
    @{ Name="special-2.svg"; Width=400; Height=300; Color="#A67B5B"; Text="BOGO Latte" },
    @{ Name="special-3.svg"; Width=400; Height=300; Color="#A67B5B"; Text="Weekend Treat" },
    @{ Name="special-4.svg"; Width=400; Height=300; Color="#A67B5B"; Text="Pastry Deal" },
    @{ Name="about-us.svg"; Width=600; Height=400; Color="#4B4B4B"; Text="About Us" },
    @{ Name="product-1.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Espresso" },
    @{ Name="product-2.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Cappuccino" },
    @{ Name="product-3.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Latte" },
    @{ Name="product-4.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Mocha" },
    @{ Name="product-5.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Croissant" },
    @{ Name="product-6.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Cheesecake" },
    @{ Name="product-7.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Bagel" },
    @{ Name="product-8.svg"; Width=300; Height=300; Color="#A67B5B"; Text="Cold Brew" },
    @{ Name="gallery-1.svg"; Width=400; Height=400; Color="#4B4B4B"; Text="Interior" },
    @{ Name="gallery-2.svg"; Width=400; Height=400; Color="#4B4B4B"; Text="Barista" },
    @{ Name="gallery-3.svg"; Width=400; Height=400; Color="#4B4B4B"; Text="Latte Art" },
    @{ Name="picture-bg.svg"; Width=1920; Height=600; Color="#6F4E37"; Text="Coffee Art Background" },
    @{ Name="soon-1.svg"; Width=300; Height=300; Color="#808080"; Text="Seasonal Blend" },
    @{ Name="soon-2.svg"; Width=300; Height=300; Color="#808080"; Text="Vegan Cookie" },
    @{ Name="soon-3.svg"; Width=300; Height=300; Color="#808080"; Text="Matcha Series" }
)

foreach ($img in $images) {
    $content = @"
<svg width="$($img.Width)" height="$($img.Height)" xmlns="http://www.w3.org/2000/svg">
    <rect width="100%" height="100%" fill="$($img.Color)"/>
    <text x="50%" y="50%" font-family="Arial" font-size="24" fill="white" dominant-baseline="middle" text-anchor="middle">$($img.Text)</text>
</svg>
"@
    Set-Content -Path "images\$($img.Name)" -Value $content
}
Write-Host "Images generated successfully."
