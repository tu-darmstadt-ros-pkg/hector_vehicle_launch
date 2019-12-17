
configs = ['l_i', 'l_d', 'l_c', 'n_i', 'n_d', 'n_c']
template_path = 'enrich2019_mesh__.rviz'
template = open(template_path, "r").read()
print(template)

# input()
#
# for c in configs:
#     new_content = template.replace("rnms__", "rnms_{}".format(c))
#     print(new_content)
#     input()
#     with open("rnms_{}.rviz".format(c), 'w') as file:
#         file.write(new_content)
