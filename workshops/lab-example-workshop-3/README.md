# Workshop

This workshop sets up a local assets repository (web server) as part of the workshop
environment, populating it using imgpkg to download the set of VS Code extensions from
GitHub container registry, bypassing open-vsx.org. This is the quickest solution as
although 150MB+ is still being downloaded into the workshop container for each session,
it is local to the Kubernetes cluster. Downloading the extensions usually takes a few
seconds at most.
