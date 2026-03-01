// 1. Tell the dirt it is being dug
// 'other' refers to the specific instance of oDirt the ant is touching
other.is_being_dug = true;

// 2. Block Movement
// Reset the ant to its previous position so it can't walk through the block
x = xprevious;
y = yprevious;

// 3. Update State
is_moving = false;