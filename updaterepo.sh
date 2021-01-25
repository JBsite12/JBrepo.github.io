rm Packages Packages.xz Packages.gz Packages.bz2 Packages.zst Release

	apt-ftparchive packages ./debians > Packages
   zstd -c19 Packages > Packages.zst
	bzip2 -c9 Packages > Packages.bz2

	apt-ftparchive release -c ./assets/repo/repo.conf . > Release

echo "Done!"
