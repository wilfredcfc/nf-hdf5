process hdf5etl {
    // directives
    // a container images is required
    container "wilfredcfc/nf-hdf5:latest"

    // compute resources for the Batch Job
    cpus 1
    memory '512 MB'


    script:
        """
        hdf5utils --dataset ${params.dataset} --srcPath ${params.srcPath} --tgtPath ${params.tgtPath}
        """
}
