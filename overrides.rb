# Write in this file customization code that will get executed after all the
# soures have beenloaded.

package_list = [
    "numpy",
    "opencv-python",
    "pyrealsense2",
    "transformations",
    "urdf-parser-py",
    "trimesh",
    "scikit-image"
]

Autoproj.manifest.each_autobuild_package do |pkg|
    if pkg.kind_of?(Autobuild::Colcon)
        package_list.each do |package|
            pkg.depends_on package
        end
    end
end