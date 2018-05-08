/**
 * Mandelbulber v2, a 3D fractal generator  _%}}i*<.        ____                _______
 * Copyright (C) 2017 Mandelbulber Team   _>]|=||i=i<,     / __ \___  ___ ___  / ___/ /
 *                                        \><||i|=>>%)    / /_/ / _ \/ -_) _ \/ /__/ /__
 * This file is part of Mandelbulber.     )<=i=]=|=i<>    \____/ .__/\__/_//_/\___/____/
 * The project is licensed under GPLv3,   -<>>=|><|||`        /_/
 * see also COPYING file in this folder.    ~+{i%+++
 *
 * spherical radial offset.

 * This file has been autogenerated by tools/populateUiInformation.php
 * from the function "TransfSphericalOffsetIteration" in the file fractal_formulas.cpp
 * D O    N O T    E D I T    T H I S    F I L E !
 */

REAL4 TransfSphericalOffsetIteration(REAL4 z, __constant sFractalCl *fractal, sExtendedAuxCl *aux)
{
	// if (-length(z) > -1e-21f) -length(z) = -1e-21f;   //  z is neg.)
	z *= 1.0f + native_divide(fractal->transformCommon.offset, -length(z));
	z *= fractal->transformCommon.scale;

	aux->DE = mad(aux->DE, fabs(fractal->transformCommon.scale), 1.0f);
	aux->r_dz *= fabs(fractal->transformCommon.scale);
	return z;
}