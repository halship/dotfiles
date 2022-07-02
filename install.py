import os
import os.path

# Target files
TARGET_FILES = [
        '.config/alacritty/alacritty.yml',
        '.config/dunst/dunstrc',
        '.config/nvim/init.vim',
]

if __name__ == '__main__':
    # Get script directory
    script_dir = os.path.dirname(__file__)

    # Install files
    for file in TARGET_FILES:
        src_path = '{}/{}'.format(script_dir, file)
        dst_path = '{}/{}'.format(os.environ['HOME'], file)

        if os.path.exists(dst_path):
            print('Skip {}'.format(file))
        else:
            print('Install {}'.format(file))

            # If target directory is not exists, create directory
            os.makedirs(os.path.dirname(file), exist_ok=True)

            # Create symbolic link
            os.symlink(src_path, dst_path)

