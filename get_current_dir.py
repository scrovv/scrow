def get_current_dir(dir_path=None):
    if dir_path is not None:
        os.chdir(dir_path)
    return os.getcwd()
