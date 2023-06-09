# jobs:
# - name: hello-world-job
#   plan:
#   - task: hello-worl-task
#     config:
#     # Tells Concourse which type of worker this task should run on
#       platform: linux
#       # This is one way of telling concourse which container image to use for a task
#       # We'll explain this more when talking about resources
#       image_resource:
#         type: registry-image
#         source:
#           repository: busybox # images are pulled from docker hub by default
#           # The command Concourse will run inside a container is ls "LF"
#           # To see what the task sees in its working directory
#       outputs:
#       # Add "the-artifact" to our task 
#       - name: the-artifact
#       run:
#         path: ls
#         args: ["-lF"]