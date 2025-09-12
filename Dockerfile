# Use official Odoo 18 image
FROM odoo:18.0

# Switch to root to set permissions
USER root

# Copy custom addons (optional if using volume)
COPY ./custom_addons /mnt/extra-addons

# Ensure correct ownership
RUN chown -R odoo:odoo /mnt/extra-addons

# Switch back to Odoo user
USER odoo
