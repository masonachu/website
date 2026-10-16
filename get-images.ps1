# Downloads the portfolio images from Wix into .\images
# Run from D:\GitHub\website in PowerShell
New-Item -ItemType Directory -Force -Path images | Out-Null
$files = @{
  "control-lab.jpg" = "https://static.wixstatic.com/media/1e4cea_2933462ae79445e789823930a9c4bb9f~mv2.jpg/v1/fill/w_1960,h_1102,al_c,q_85/1e4cea_2933462ae79445e789823930a9c4bb9f~mv2.jpg"
  "lego-fortnite-odyssey.avif" = "https://static.wixstatic.com/media/1e4cea_dbf83795d73543f8a7d047095b0c1cef~mv2.avif/v1/fill/w_614,h_614,fp_0.53_0.3,q_90/1e4cea_dbf83795d73543f8a7d047095b0c1cef~mv2.avif"
  "fortnite.jpg" = "https://static.wixstatic.com/media/1e4cea_5db5d8336a454a9bb1cc3526e225d3e4~mv2.jpg/v1/fill/w_616,h_614,fp_0.44_0.39,q_90/1e4cea_5db5d8336a454a9bb1cc3526e225d3e4~mv2.jpg"
  "wartorn.jpg" = "https://static.wixstatic.com/media/1e4cea_42bc144fb4a046a9a40a70fadbfc6a0d~mv2.jpg/v1/fill/w_614,h_614,fp_0.48_0.41,q_90/1e4cea_42bc144fb4a046a9a40a70fadbfc6a0d~mv2.jpg"
  "failsafe.jpg" = "https://static.wixstatic.com/media/1e4cea_e693e569c2ba47b68ffd9df92cb615fe~mv2.jpg/v1/fill/w_614,h_614,q_90/1e4cea_e693e569c2ba47b68ffd9df92cb615fe~mv2.jpg"
  "unannounced-title.webp" = "https://static.wixstatic.com/media/1e4cea_b36f386cdbef478492943530818d5efd~mv2.webp/v1/fill/w_616,h_614,q_90/1e4cea_b36f386cdbef478492943530818d5efd~mv2.webp"
  "tungsten-and-sparky.png" = "https://static.wixstatic.com/media/1e4cea_2ffaf731012c42daa19174e3e0129ff6~mv2.png/v1/fill/w_616,h_614,q_90/1e4cea_2ffaf731012c42daa19174e3e0129ff6~mv2.png"
  "amazin.png" = "https://static.wixstatic.com/media/1e4cea_ea6bac9b762f423aa140b6624f475514~mv2.png/v1/fill/w_614,h_614,fp_0.59_0.76,q_90/1e4cea_ea6bac9b762f423aa140b6624f475514~mv2.png"
}
foreach ($f in $files.GetEnumerator()) {
  Write-Host "Downloading $($f.Key)"
  Invoke-WebRequest -Uri $f.Value -OutFile (Join-Path images $f.Key)
}
Write-Host "Done. $($files.Count) images saved to .\images"
